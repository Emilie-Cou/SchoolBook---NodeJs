const ejs = require('ejs');
const queryString = require('querystring');
const mssql = require('mssql');
const { dbConnection } = require('../utils/db.utils');

const commentController = {
    AllComments : async (req, res) => {
        const db = await dbConnection();
        const result = await db.query('SELECT * FROM Commentaire');

        const comment = result.recordset.map(comment => {
            return {
                prenom : comment['Prenom'],
                content : comment['Content'],
            }
        });

        ejs.renderFile(`${require.main.path}/views/comment/commentAll.ejs`, {comment})
        .then(pageRender => {
            res.writeHead(200, { 'Content-Type': 'text/html' });
            res.end(pageRender);
        })
        .catch(err => {
            res.writeHead(500);
            res.end();
        })
    },

    AddCommentGet : (req, res) => {
        ejs.renderFile(`${require.main.path}/views/comment/commentForm.ejs`)
        .then(pageRender => {
            res.writeHead(200, { 'Content-Type': 'text/html'});
            res.end(pageRender);
        })
        .catch(err => {
            res.writeHead(500);
            res.end();
        })
    },

    AddCommentPost : (req, res) => {
        // Récupération des données
        let comment = '';
        req.on('data', formCom => {
            comment += formCom.toString();
        });

        // Traitement après réception
        req.on('end', async () => {
            const data = queryString.parse(comment);
            const db = await dbConnection();

            //! Requête SQL préparée, pour éviter la faille de sécurité "Injection SQL"
            const sqlQuery = new mssql.PreparedStatement(db);
            //* Définition des types de données
            sqlQuery.input('prenom', mssql.NVarChar);
            sqlQuery.input('content', mssql.NVarChar);
            //* Préparation à la requête
            await sqlQuery.prepare('INSERT INTO [Commentaire] (Prenom, Content) VALUES (@prenom, @content)');
            //* Exécution de la requête
            await sqlQuery.execute(data);

            //* Redirection vers la page des commentaires
            res.writeHead(302, { location: '/comment' });
            res.end();
        })
    },
};

module.exports = commentController;