const { createServer } = require('node:http');

var os = require('os');
var networkInterfaces = os.networkInterfaces();

const ip = networkInterfaces['eth0'][0]['address']
const hostname = '127.0.0.1';
const port = 3000;
const app_version = process.env.APP_VERSION

const server = createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end(`Maciej Kaminski \n host ip: ${ip} \n hostname: ${hostname}  \n app version: ${app_version}`);

});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});