const file = (await Deno.readTextFile('data.csv')).split('\r\n').slice(0, -1).map(v => v.split(','));
const names = file[0];
const csv_lines = file.slice(1);

for (let i = 0; i < names.length; i++) {
    let min_length = 0;
    let max_length = 0;
    let is_number = true;
    let is_float = true;
    for (const v of csv_lines) {
        if (min_length === 0 || v[i].length < min_length)
            min_length = v[i].length;
        if (max_length < v[i].length)
            max_length = v[i].length;
        if (!/^[0-9\.]+$/.test(v[i]) && v[i].length !== 0)
            is_number = false;
        if (!v[i].includes('.'))
            is_float = false;
        // console.log(v[i])
    }
console.log(`${names[i].padEnd(40, ' ')}${min_length}...${max_length}  `, '\tis_number:', is_number, '\tis_float:', is_float)
}

