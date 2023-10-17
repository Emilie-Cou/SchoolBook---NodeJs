// Var .env chargement
require('dotenv').config();

// Imports
const http = require('http');
const dbUtils = require('./utils/db.utils');
const homeController = require('./controllers/home.controllers');
const classeController = require('./controllers/classes.controllers');
const aboutController = require('./controllers/about.controllers');
const commentController = require('./controllers/comment.controllers');
const connectionController = require('./controllers/connection.controllers');
const schoolBookController = require('./controllers/schoolBook.controllers');

// Var .env récupération
const port = process.env.PORT;

// Test connexion DB
dbUtils.testDbConnection();

// Création serveur
const server = http.createServer((request, response) => {
    // Infos req
    const url = request.url;
    const method = request.method;
    console.log(`url: "${url}" • method: "${method}"`);

    const idUrl = url.substring(url.length-3, url.length);
    const restUrl = url.substring(0, url.length-3);

    // Routing
    if (url === '/' && method === 'GET') {
        homeController.index(request, response);
    } 
    else if (url === '/classes' && method === 'GET') {
        classeController.classesAll(request, response);
    }
    else if (url === '/professors' && method === 'GET') {
        classeController.prof(request, response);
    }
    else if (url === '/about' && method === 'GET') {
        aboutController.about(request, response);
    }
    else if (url === '/comment' && method === 'GET') {
        commentController.AllComments(request, response);
    }
    else if (url === '/comment/add' && method === 'GET') {
        commentController.AddCommentGet(request, response);
    }
    else if (url === '/comment/add' && method === 'POST') {
        commentController.AddCommentPost(request, response);
    }
    else if (url === '/connection'  && method === 'GET') {
        connectionController.connectionGet(request, response);
    }
    else if (url === '/connection' && method === 'POST') {
//TODO dans controller, récup idClasse et redirection vers la bonne page
        connectionController.connectionPost(request, response);
    }
    else if (url === '/prof' && method === 'GET') {
//TODO Mettre en place les différentes fonctionnalités voulues
        schoolBookController.professorGet(request, response);
    }
    else if (url === '/prof' && method === 'POST') {
//TODO Mettre en place les différentes fonctionnalités voulues
        schoolBookController.professorPost(request, response);
    }
    else if (url === '/student' && method === 'GET') {
//TODO Mettre en place les différentes fonctionnalités voulues
        schoolBookController.studentGet(request, response);
    }
    else if (url === '/student' && method === 'POST') {
//TODO Mettre en place les différentes fonctionnalités voulues
        schoolBookController.studentPost(request, response);
    }
    else if (url === restUrl+idUrl && method === 'GET') {
        console.log(restUrl+idUrl);
        console.log(idUrl);
        classeController.classeId(request, response);
    }
    else {
        response.writeHead(404, { "Content-Type": "text/html" });
        response.end("<h1>Page non trouvée</h1> \n <h3>Erreur Erreur Erreur Erreur Erreur Erreur Erreur Erreur Erreur Erreur Erreur Erreur Erreur Erreur Erreur Erreur Erreur </h3>")
    }
});

server.listen(port, () => {
    console.log(`Web Server start on port ${port}`);
});
