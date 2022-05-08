import { Client } from "https://deno.land/x/mysql@v2.10.2/mod.ts";

const split_csv_line = (line: string): string[] => {
    const values: string[] = [];
    let insideQuotes = false;
    let buffer = '';
    for (const char of line) {
        if (char === '"') {
            insideQuotes = !insideQuotes;
        } else if (char === "," && !insideQuotes) {
            values.push(buffer)
            buffer = ''
        } else {
            buffer += char;
        }
    }
    values.push(buffer)
    return values;
}

console.log('parsing csv...')
const file = (await Deno.readTextFile('data.csv')).split('\r\n').slice(0, -1).map(split_csv_line);
console.log('...done')
const names = file[0].map(v => v.replaceAll(/æ/g, 'ae').replaceAll(/ø/g, 'oe').replaceAll(/å/g, 'aa'));
const csv_lines = file.slice(1);

// const index = names.indexOf('betegnelse')
// console.log(index)

// const max = csv_lines.map(l => l[index]).sort((a, b) => b.length - a.length);
// console.log(max[0].length)

const queries_in_range = (begin: number, end: number, existing_ids: string[]) => csv_lines
    .slice(begin, end)
    .filter(l => !existing_ids.includes(l[0]))
    .map((csv_line) => {
        const values = csv_line.map((field) => {
            if (/^0\d+/.test(field))
                return `"${field}"`;
            else if (/^\d+\.\d+$/.test(field))
                return field.toString();
            else if (/^\d+$/.test(field))
                return field.toString();
            else if (field === '')
                return 'NULL';
            else if (/^".*?"$/.test(field))
                return field;
            else
                return `"${field}"`;
        });
    return `INSERT INTO raw (${names.join(', ')}) \nVALUES (${values.join(', ')})`;
})//.join(';\n');

// console.log(csv_lines[640].map((v, i) => [names[i], v]))

console.log('connecting to database...')
const db = await new Client().connect({
    hostname: '127.0.0.1',
    db: 'address-app',
    username: 'root',
    password: 'example',
});
console.log('...done')

console.log('retrieving ids...')
const existing_ids = (await db.query('select id from raw')).map(({id}: {id: string}) => id);
console.log('...done')

console.log('sending data...')

const interval = 1000;

for (let i = 0; i < csv_lines.length; i += interval) {
    const end = Math.min(i + interval, csv_lines.length - 1);
    console.log(`  sending ${i}..${end}/${csv_lines.length - 1} insert statements`)
    const promises = queries_in_range(i, end, existing_ids).map(q => db.query(q));
    await Promise.all(promises)
    console.log('  ...done')
}

console.log('...done')

await db.close();
