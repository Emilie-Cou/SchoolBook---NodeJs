const ejs = require('ejs');
const queryString = require('querystring');
const mssql = require('mssql');
const { dbConnection } = require('../utils/db.utils');

const connectionController = {
    connectionGet : (req, res) => {
        ejs.renderFile(`${require.main.path}/views/connection/connection.ejs`)
        .then(pageRender => {
            res.writeHead(200, { 'Content-Type': 'text/html'});
            res.end(pageRender);
        })
        .catch(err => {
            res.writeHead(500);
            res.end();
        })
    },

    connectionPost : (req, res) => {
        let user = '';
        req.on('data', formConnex => {
            user += formConnex.toString();
        });
        req.on('end', async () => {
            const data = queryString.parse(user);
            const db = await dbConnection();
            const sqlQuery = new mssql.PreparedStatement(db);
            sqlQuery.input('user', mssql.NVarChar);
            sqlQuery.input('password', mssql.NVarChar);
// TODO Faire requête +
// TODO Vérifier password et user +
// TODO Récupération des données +
// TODO Redirection vers la page en fonction de l'id
            await sqlQuery.prepare('select Classe.IdClasse from [Student], [Professor], [Classe] where @user = [IdStudent] or @user = Professor.IdProf and @password = [Password1] or @password = [Password2] or @password = [Password]');
            await sqlQuery.execute(data);

            //* Redirection vers la page en fonction de l'id
            res.writeHead(302, { location: '/student/:id'});
            res.end();
        })

    },
};

module.exports = connectionController;