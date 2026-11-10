# EXPERIMENT 6: Online Supermarket: Node.js + MongoDB CLI & AngularJS Sorted Table

**Subject:** ML1503 – Web Programming Lab  
**Exam Mark Split-up:** Aim & Algorithm (10) | Program (60) | Output & Result (20) | Viva (10) | Total (100)

---

### Quick 1-Line Curl Commands to Download This Experiment
```bash
mkdir -p 06_supermarket_node_mongo && cd 06_supermarket_node_mongo

# 1. Download Node.js CLI Application
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/06_supermarket_node_mongo/supermarket_cli.js

# 2. Download AngularJS Table Front-End
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/06_supermarket_node_mongo/supermarket_table.html

# 3. Download Mongo Shell Script
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/06_supermarket_node_mongo/seed_mongo.js

# 4. Download local AngularJS library
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/06_supermarket_node_mongo/angular.min.js
```

---

## 1. AIM
To create a MongoDB database `supermarket` with a `products` collection containing at least 10 products (`productId`, `name`, `brand`, `category`, `price`, `stock`), build a Command Line Application in Node.js to search products by ID or Name and display sorted results in console table format, and present the multi-brand product details in a sorted table using AngularJS.

---

## 2. ALGORITHM
### (A) Node.js & MongoDB Command Line App:
1. Initialize Mongoose and connect to the local MongoDB instance at `mongodb://127.0.0.1:27017/supermarket`.
2. Define the product schema with `productId`, `name`, `brand`, `category`, `price`, and `stock`.
3. Check collection document count: if empty, seed at least 10 products with distinct brands and categories.
4. Read the search keyword from CLI arguments using `process.argv[2]` (defaulting to `"Milk"`).
5. Query MongoDB using `$or: [{ productId: query }, { name: new RegExp(query, 'i') }, { category: new RegExp(query, 'i') }]`.
6. Sort results by price ascending via `.sort({ price: 1 })`.
7. Render the matching results using `console.table()` and cleanly close the database connection.

### (B) AngularJS Table Interface:
1. Define an AngularJS module `marketApp` and controller `marketCtrl`.
2. Populate `$scope.products` with the 10 supermarket products.
3. Bind the search input to `$scope.searchText` via `ng-model`.
4. Render product rows using `ng-repeat="p in products | filter:searchText | orderBy:'price':reverse"`.
5. Display brand names, categories, formatted prices, and remaining stock.

---

## 3. HOW TO EXECUTE

### Option 1: Running the Node.js CLI Application
```bash
# To search by product name (e.g. Milk):
node supermarket_cli.js Milk

# To search by product ID (e.g. P104):
node supermarket_cli.js P104

# To search by category or another item (e.g. Bread):
node supermarket_cli.js Bread
```

### Option 2: Running the Mongo Shell Script (Direct MongoDB)
```bash
mongosh < seed_mongo.js
# Or inside mongosh:
# use supermarket
# db.products.find({ name: "Milk" }).sort({ price: 1 })
```

### Option 3: Opening the AngularJS Table in Browser
```bash
xdg-open supermarket_table.html || google-chrome supermarket_table.html || firefox supermarket_table.html
```

---

## 4. EXPECTED OUTPUT

### Terminal Output (`node supermarket_cli.js Milk`):
```text
================ SEARCH RESULTS FOR 'Milk' (SORTED BY PRICE ASCENDING) ================
┌─────────┬────────────┬────────┬──────────┬──────────┬────────────┬───────┐
│ (index) │ Product ID │ Name   │ Brand    │ Category │ Price (Rs) │ Stock │
├─────────┼────────────┼────────┼──────────┼──────────┼────────────┼───────┤
│ 0       │ 'P101'     │ 'Milk' │ 'Aavin'  │ 'Dairy'  │ 30         │ 100   │
│ 1       │ 'P102'     │ 'Milk' │ 'Amul'   │ 'Dairy'  │ 34         │ 80    │
│ 2       │ 'P103'     │ 'Milk' │ 'Nestle' │ 'Dairy'  │ 45         │ 50    │
└─────────┴────────────┴────────┴──────────┴──────────┴────────────┴───────┘
```

### Browser Output (`supermarket_table.html`):
- Filter input field initialized with "Milk".
- HTML Table showing:
  - `P101` | Milk | Aavin | Dairy | Rs. 30 | 100 units
  - `P102` | Milk | Amul | Dairy | Rs. 34 | 80 units
  - `P103` | Milk | Nestle | Dairy | Rs. 45 | 50 units
- Typing another item or clearing the input immediately lists all products sorted by price.

---

## 5. RESULT
Thus, the Node.js and MongoDB online supermarket CLI application and the AngularJS price-sorted table interface were implemented and verified successfully.

---

## 6. VIVA VOCE QUESTIONS & ANSWERS
1. **Q: What is MongoDB and how does it differ from SQL databases?**  
   *A:* MongoDB is a NoSQL, document-oriented database that stores records as flexible, schema-free BSON (Binary JSON) documents rather than rigid tables with rows and columns.
2. **Q: What is Mongoose?**  
   *A:* Mongoose is an Object Data Modeling (ODM) library for Node.js and MongoDB. It provides schema validation, type casting, query building, and business logic hooks.
3. **Q: How does sorting work in MongoDB queries?**  
   *A:* In MongoDB, `.sort({ field: 1 })` sorts in ascending order (lowest to highest), while `.sort({ field: -1 })` sorts in descending order.
4. **Q: How do you read command-line arguments in Node.js?**  
   *A:* Via the built-in `process.argv` array. `process.argv[0]` is the node executable path, `process.argv[1]` is the script file path, and `process.argv[2]` onwards contain user-supplied arguments.
5. **Q: How does `orderBy:'price'` work in AngularJS?**  
   *A:* It is a built-in filter that automatically sorts the array of objects displayed by `ng-repeat` based on the specified attribute (`price`). Passing a boolean flag toggles ascending (`false`) or descending (`true`).
