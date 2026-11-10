# EXPERIMENT 7: REST API with Express.js & AJAX Application

**Subject:** ML1503 – Web Programming Lab  
**Exam Mark Split-up:** Aim & Algorithm (10) | Program (60) | Output & Result (20) | Viva (10) | Total (100)

---

### Quick 1-Line Curl Commands to Download This Experiment
```bash
mkdir -p 07_rest_api_ajax && cd 07_rest_api_ajax

# 1. Download REST API Server
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/07_rest_api_ajax/server.js

# 2. Download AJAX Webpage
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/07_rest_api_ajax/index.html

# 3. Download Standalone JSON File (Offline Fallback)
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/07_rest_api_ajax/products.json
```

---

## 1. AIM
To design and build a RESTful API following REST syntax using Express.js in Node.js, and create an asynchronous AJAX front-end web application that fetches and renders product data dynamically in the DOM without reloading the webpage.

---

## 2. ALGORITHM
### (A) Express.js REST API Server:
1. Initialize an Express.js application and enable CORS (`cors()`) to allow cross-origin client requests.
2. Define a products data structure with properties: `id`, `name`, `category`, and `price`.
3. Create a RESTful HTTP `GET` endpoint `/api/products` that returns the product array formatted as JSON.
4. Bind the server to listen on port 3000 (`app.listen(3000)`).

### (B) AJAX Front-End Application:
1. Create an HTML user interface with a button labeled "Load via REST API" and "Load from JSON File".
2. Add a click handler that initiates an asynchronous HTTP request using the Fetch API (`fetch(url)`).
3. Handle the returned Promise: convert the stream response to JSON (`response.json()`).
4. Loop through the JSON array and dynamically construct table rows inside a `<tbody>` using DOM manipulation (`innerHTML`).
5. Update the UI status banner to notify the user of successful asynchronous data transfer.

---

## 3. HOW TO EXECUTE

### Step 1: Start the REST API Server in Terminal
```bash
node server.js
```
*Output will display:*
```text
=======================================================
 Express REST API Server running at:
 👉 http://localhost:3000/api/products
 Webpage available at: http://localhost:3000/index.html
=======================================================
```

### Step 2: Open the Webpage in Browser
```bash
# Option A: Via HTTP server
xdg-open http://localhost:3000/index.html
# Option B: Direct file opening
xdg-open index.html
```
*(Click "Load via REST API" or "Load from JSON File" to see asynchronous loading in action!)*

---

## 4. EXPECTED OUTPUT
- **Terminal Output:**
  ```bash
  $ curl http://localhost:3000/api/products
  [
    { "id": 101, "name": "Apple MacBook Air M2", "category": "Laptops", "price": 94990 },
    { "id": 102, "name": "Google Pixel 8", "category": "Smartphones", "price": 64999 },
    ...
  ]
  ```
- **Browser Output:**
  - Clicking "Load via REST API" immediately shows green success banner:  
    `✔ Success: Loaded 5 records asynchronously via AJAX (Express REST API)!`
  - Table dynamically displays 5 product records with headers: `ID`, `Product Name`, `Category`, and `Price (Rs.)`.
  - Notice that the webpage URL and browser tab **do NOT reload or refresh**, proving asynchronous DOM rendering!

---

## 5. RESULT
Thus, the REST API following REST syntax using Express.js and the asynchronous AJAX client application were developed and verified successfully.

---

## 6. VIVA VOCE QUESTIONS & ANSWERS
1. **Q: What is REST and what are its key architectural principles?**  
   *A:* REpresentational State Transfer (REST) is a software architectural style for networked systems. Its key principles include client-server separation, statelessness, cacheability, uniform interface (standard HTTP verbs like GET, POST, PUT, DELETE), and resource identification via URIs.
2. **Q: What is AJAX and what problem does it solve?**  
   *A:* Asynchronous JavaScript And XML (AJAX) allows web applications to send and receive data from a web server asynchronously in the background without reloading the current webpage, resulting in fast, fluid desktop-like web applications.
3. **Q: What is CORS and why is it needed?**  
   *A:* Cross-Origin Resource Sharing (CORS) is a browser security mechanism using HTTP headers that permits or restricts requests made from a different domain, protocol, or port than the one serving the original webpage.
4. **Q: What is the difference between `fetch()` and `XMLHttpRequest`?**  
   *A:* `fetch()` is modern, Promise-based, and cleaner to write using `.then()` or `async/await`. `XMLHttpRequest` is older, callback-based, and more verbose.
5. **Q: What HTTP status code signifies a successful REST GET request?**  
   *A:* HTTP Status Code `200 OK`.
