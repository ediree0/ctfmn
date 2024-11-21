const express = require('express');
const request = require('request');
const dns = require('dns');
const fs = require('fs');

const app = express();
const port = 9009;
const FLAG = 'FLAG{TEST}';

function isLocalhostIP(ip) {
  return ip === '127.0.0.1' || ip === '::1';
}

app.get('/', (req, res) => {
  fs.readFile('index.html', (err, data) => {
    if (err) {
      res.status(500).json('Internal Server Error: Unable to load index.html.');
    } else {
      res.setHeader('Content-Type', 'text/html');
      res.send(data);
    }
  });
});

app.get('/fetch', (req, res) => {
  const requestedUrl = req.query.url;
  const hostname = new URL(requestedUrl).hostname;
  dns.resolve4(hostname, (err, addresses) => {
    if (err) {
      return res.status(500).json('Internal Server Error: Unable to resolve the hostname.');
    }
    const isLocalhost = addresses.some(isLocalhostIP);

    if (isLocalhost) {
      return res.status(403).json('Forbidden: Access to localhost URLs is not allowed.');
    } else {
      request(requestedUrl, (error, response, body) => {
        if (!error) {
          res.json({body: body});
        } else {
          res.status(500).json('Internal Server Error: Unable to fetch the requested URL.');
        }
      });
    }
  });
});

app.get('/flag', (req, res) => {
  const ip = req.connection.remoteAddress;
  if (isLocalhostIP(ip)) {
    res.json(FLAG);
  } else {
    res.status(403).json('Forbidden: This endpoint is only accessible from localhost.');
  }
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
