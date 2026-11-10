// seed_mongo.js
// MongoDB Shell Commands (can be run with: mongosh < seed_mongo.js OR inside mongosh)

use supermarket;

// Clean existing data if any
db.products.drop();

// Insert at least 10 products with required fields
db.products.insertMany([
  { productId: "P101", name: "Milk", brand: "Aavin", category: "Dairy", price: 30, stock: 100 },
  { productId: "P102", name: "Milk", brand: "Amul", category: "Dairy", price: 34, stock: 80 },
  { productId: "P103", name: "Milk", brand: "Nestle", category: "Dairy", price: 45, stock: 50 },
  { productId: "P104", name: "Bread", brand: "Modern", category: "Bakery", price: 40, stock: 60 },
  { productId: "P105", name: "Bread", brand: "Britannia", category: "Bakery", price: 45, stock: 75 },
  { productId: "P106", name: "Butter", brand: "Amul", category: "Dairy", price: 55, stock: 90 },
  { productId: "P107", name: "Cheese Slices", brand: "Go Cheese", category: "Dairy", price: 120, stock: 40 },
  { productId: "P108", name: "Premium Tea", brand: "Taj Mahal", category: "Beverage", price: 150, stock: 55 },
  { productId: "P109", name: "Filter Coffee", brand: "Bru", category: "Beverage", price: 180, stock: 65 },
  { productId: "P110", name: "Glucose Biscuits", brand: "Parle-G", category: "Snacks", price: 20, stock: 200 }
]);

print("10 Products successfully inserted into 'supermarket.products' collection!");

// Query: Search for products by name and sort by price ascending
print("\n--- Query: Find products with name matching 'Milk' sorted by price ascending ---");
printjson(db.products.find({ name: "Milk" }).sort({ price: 1 }).toArray());
