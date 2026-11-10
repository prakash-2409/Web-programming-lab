/**
 * ML1503 Experiment 7: REST API Server
 * Built with Express.js (with built-in native HTTP fallback)
 * 
 * Run:
 *   npm install express cors   (optional)
 *   node server.js
 */

const fs = require('fs');
const path = require('path');

const PORT = 3000;

// Products Data
const products = [
    { id: 101, name: "Apple MacBook Air M2", category: "Laptops", price: 94990 },
    { id: 102, name: "Google Pixel 8", category: "Smartphones", price: 64999 },
    { id: 103, name: "Sony WH-1000XM5 Headphones", category: "Audio", price: 26990 },
    { id: 104, name: "Logitech MX Master 3S", category: "Accessories", price: 8995 },
    { id: 105, name: "Dell UltraSharp 27-inch 4K Monitor", category: "Displays", price: 48500 }
];

let useExpress = false;
try {
    const express = require('express');
    const cors = require('cors');

    const app = express();
    app.use(cors());
    app.use(express.json());

    // Serve static files (ajax.html, index.html) directly
    app.use(express.static(__dirname));

    // REST GET API Endpoints
    app.get('/api/products', (req, res) => {
        res.json(products);
    });

    app.get('/api/products/:id', (req, res) => {
        const item = products.find(p => p.id === parseInt(req.params.id));
        if (!item) return res.status(404).json({ error: "Product not found" });
        res.json(item);
    });

    app.listen(PORT, () => {
        console.log(`=======================================================`);
        console.log(` Express REST API Server running at:`);
        console.log(` 👉 http://localhost:${PORT}/api/products`);
        console.log(` Webpage available at: http://localhost:${PORT}/index.html`);
        console.log(`=======================================================`);
    });
    useExpress = true;
} catch (e) {
    // Graceful native Node HTTP fallback if express is not installed
    const http = require('http');

    const server = http.createServer((req, res) => {
        // Enable CORS headers
        res.setHeader('Access-Control-Allow-Origin', '*');
        res.setHeader('Access-Control-Allow-Methods', 'GET, OPTIONS');
        res.setHeader('Access-Control-Allow-Headers', 'Content-Type');

        if (req.method === 'OPTIONS') {
            res.writeHead(204);
            res.end();
            return;
        }

        if (req.url === '/api/products' || req.url === '/api/products/') {
            res.writeHead(200, { 'Content-Type': 'application/json' });
            res.end(JSON.stringify(products, null, 2));
        } else if (req.url === '/' || req.url === '/index.html') {
            const htmlPath = path.join(__dirname, 'index.html');
            if (fs.existsSync(htmlPath)) {
                res.writeHead(200, { 'Content-Type': 'text/html' });
                res.end(fs.readFileSync(htmlPath));
            } else {
                res.writeHead(404);
                res.end("Not Found");
            }
        } else if (req.url === '/products.json') {
            res.writeHead(200, { 'Content-Type': 'application/json' });
            res.end(JSON.stringify(products, null, 2));
        } else {
            res.writeHead(404, { 'Content-Type': 'application/json' });
            res.end(JSON.stringify({ error: "Route not found" }));
        }
    });

    server.listen(PORT, () => {
        console.log(`=======================================================`);
        console.log(` [Built-in HTTP Fallback] REST API Server running at:`);
        console.log(` 👉 http://localhost:${PORT}/api/products`);
        console.log(` Webpage available at: http://localhost:${PORT}/index.html`);
        console.log(`=======================================================`);
    });
}
