const ejs = require('ejs');

const aboutController = {
    about : (req, res) => {
        ejs.renderFile(`${require.main.path}/views/about/about.ejs`)
        .then(pageRender => {
            res.writeHead(200, { 'Content-Type': 'text/html' });
            res.end(pageRender);
        })
        .catch(err => {
            res.writeHead(500);
            res.end();
        })
    }
};

module.exports = aboutController;