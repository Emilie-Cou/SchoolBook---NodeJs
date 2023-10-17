const ejs = require('ejs');
const fs = require('fs');


const imgToBase64 = (imagePath) => {
    const bitmap = fs.readFileSync(imagePath);
    return new Buffer.from(bitmap).toString('base64');
}

const homeController = {
    index : (req, res) => {
        const image = imgToBase64(`${require.main.path}/public/pics/ecole/Ecole.jpg`);

        ejs.renderFile(`${require.main.path}/views/home/index.ejs`,{image})
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

module.exports = homeController;