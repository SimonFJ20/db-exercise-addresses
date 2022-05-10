import { Client } from "https://deno.land/x/mysql@v2.10.2/mod.ts";
import { Application, Router, Status, send } from "https://deno.land/x/oak@v10.4.0/mod.ts";

const db = await new Client().connect({
    hostname: '127.0.0.1',
    db: 'address-app',
    username: 'root',
    password: 'example',
});

const app = new Application();
const router = new Router();

router.get('/search', (ctx) => {
    ctx.response.type = 'json';
    ctx.response.body = [];
    ctx.response.status = Status.OK;
});

router.get('/search/:string', async (ctx) => {

    const res = await db.query('SELECT * FROM letter_address WHERE betegnelse LIKE ? LIMIT 100', ["%" + ctx.params.string + "%"]);

    ctx.response.type = 'json';
    ctx.response.body = res;
    ctx.response.status = Status.OK;
});

app.use(router.allowedMethods());
app.use(router.routes());

app.use(async (ctx) => {
    await send(ctx, ctx.request.url.pathname, {
        root: `${Deno.cwd()}/public`,
        index: 'index.html',
    });
});

app.addEventListener('listen', () => console.log(`Running server at http://localhost:8000/`))
await app.listen({ port: 8000 });

