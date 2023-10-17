const ejs = require('ejs');
const queryString = require('querystring');
const mssql = require('mssql');
const { dbConnection } = require('../utils/db.utils');
const fs = require('fs');

const imgToBase64 = (imagePath) => {
    const bitmap = fs.readFileSync(imagePath);
    return new Buffer.from(bitmap).toString('base64');
}

const schoolBookController = {
    professorGet : async (req, res) => {
        const db = await dbConnection();
        const result = await db.query('select * from Blog as b join BlogCom as bc on b.IdBlog = bc.IdBlog and b.IdClasse = bc.IdClasse');
        const article = result.recordset.map(art => {
            return {
                idClasse : art['IdClasse'],
                idBlog : art['IdBlog'],
                titre : art['Titre'],
                img : imgToBase64(require.main.path+ art['Img']),
                desc : art['Desc'],
                prenom : art['Prenom'],
                comment : art['Content'],
            }
        });

        ejs.renderFile(`${require.main.path}/views/schoolBook/prof.ejs`, {article})
        .then(pageRender => {
            res.writeHead(200, { 'Content-Type': 'text/html' });
            res.end(pageRender);
        })
        .catch(err => {
            res.writeHead(500);
            res.end();
        })
    },

    professorPost : (req, res) => {
        let blog = '';
        req.on('data', formBlog => {
            blog += formBlog.toString();
        });

        req.on('end', async () => {
            const data = queryString.parse(blog);
            const db = await dbConnection();

            const sqlQuery = new mssql.PreparedStatement(db);

            sqlQuery.input('titre', mssql.NVarChar);
            sqlQuery.input('img', mssql.NVarChar);
            sqlQuery.input('desc', mssql.NVarChar);

            await sqlQuery.prepare('INSERT INTO [Blog] ([Titre], [Img], [Desc]) VALUES (@titre, @img, @desc)');

            await sqlQuery.execute(data);

            res.writeHead(302, { location: '/prof' });
            res.end();
        })
    },

    studentGet : async (req, res) => {
        const db = await dbConnection();
        const result = await db.query('select * from Blog as b join BlogCom as bc on b.IdBlog = bc.IdBlog and b.IdClasse = bc.IdClasse');
        const article = result.recordset.map(art => {
            return {
                idClasse : art['IdClasse'],
                idBlog : art['IdBlog'],
                titre : art['Titre'],
                img : imgToBase64(require.main.path+ art['Img']),
                desc : art['Desc'],
                prenom : art['Prenom'],
                comment : art['Content'],
            }
        });

        ejs.renderFile(`${require.main.path}/views/schoolBook/student.ejs`, {article})
        .then(pageRender => {
            res.writeHead(200, { 'Content-Type': 'text/html' });
            res.end(pageRender);
        })
        .catch(err => {
            res.writeHead(500);
            res.end();
        })
    },

    studentPost : (req, res) => {
        let blogCom = '';
        req.on('data', formBlogCom => {
            blogCom += formBlogCom.toString();
        });

        req.on('end', async () => {
            const data = queryString.parse(blogCom);
            const db = await dbConnection();

            const sqlQuery = new mssql.PreparedStatement(db);

            sqlQuery.input('id', mssql.Int);
            sqlQuery.input('prenom', mssql.NVarChar);
            sqlQuery.input('comment', mssql.NVarChar);
// TODO beug
            await sqlQuery.prepare('UPDATE [Blog] SET [Prenom] = @prenom, [Comment] = @comment WHERE IdArt = @id');

            await sqlQuery.execute(data);

            res.writeHead(302, { location: '/student' });
            res.end();
        })
    },
};

module.exports = schoolBookController;