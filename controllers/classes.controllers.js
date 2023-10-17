const ejs = require('ejs');
const queryString = require('querystring');
const mssql = require('mssql');
const { dbConnection } = require('../utils/db.utils');
const fs = require('fs');
const url = require('url');

const imgToBase64 = (imagePath) => {
    const bitmap = fs.readFileSync(imagePath);
    return new Buffer.from(bitmap).toString('base64');
}


const classeController = {
    classesAll : async (req, res) => {
        const db = await dbConnection();
        const result = await db.query("select c.IdClasse, c.CourteDescription, c.Img, c.NomClasse, p.Nom from Classe as c join Professor as p on c.IdProf = p.IdProf and p.IdClasse not in ('Dir', 'SEC1', 'SEC2')");

        const classes = result.recordset.map(classe => {
            return {
                id : classe['IdClasse'],
                nom : classe['NomClasse'],
                miniDesc : classe['CourteDescription'],
                nomProf : classe['Nom'],
                img: imgToBase64(require.main.path+ classe['Img']),
            }
        });

        ejs.renderFile(`${require.main.path}/views/classe/classeAll.ejs`, {classes})
            .then(pageRender => {
                res.writeHead(200, { 'Content-Type': 'text/html' });
                res.end(pageRender);
            })
            .catch(err => {
                res.writeHead(500),
                res.end();
            })
    },


    classeId : async (req, res) => {
        const parsed = url.parse(req.url);
        const query  = queryString.parse(parsed.query); 
        const id = query.id
        console.log("query = " , query.id);

        const db = await dbConnection();
        const result = await db.query(`SELECT c.IdClasse, c.Description, c.Img, c.NomClasse, p.Nom FROM Classe as c join Professor as p on c.IdProf = p.IdProf WHERE c.IdClasse = '${id}'`);

        const classe = result.recordset.map(classe => {
            return {
                id : classe['IdClasse'],
                nom : classe['NomClasse'],
                prof : classe['Nom'],
                desc : classe['Description'],
                img : imgToBase64(require.main.path+ classe['Img']),
            }
        });

        ejs.renderFile(`${require.main.path}/views/classe/classeId.ejs`, {classe})
        .then(pageRender => {
            res.writeHead(200, { 'Content-Type': 'text/html' });
            res.end(pageRender);
        })
        .catch(err => {
            console.log('je passe dans catch');
            res.writeHead(500);
            res.end();
        })
    },

    prof : async (req, res) => {
        const db = await dbConnection();
        const result = await db.query('select p.Nom, c.NomClasse, p.IdProf, c.IdClasse, p.Img from Professor as p join Classe as c on c.IdProf = p.IdProf');
        
        const profs = result.recordset.map(prof => {
            return {
                nom : prof['Nom'],
                nomClasse : prof['NomClasse'],
                idProf : prof['IdProf'],
                idClasse : prof['IdClasse'],
                img: imgToBase64(require.main.path+ prof['Img']),
            }
        });

        ejs.renderFile(`${require.main.path}/views/classe/prof.ejs`, {profs})
            .then(pageRender => {
                res.writeHead(200, { 'Content-Type': 'text/html' });
                res.end(pageRender);
            })
            .catch(err => {
                res.writeHead(500),
                res.end();
            })
    },
};

module.exports = classeController;