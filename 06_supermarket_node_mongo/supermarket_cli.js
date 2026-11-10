/**
 * ML1503 Experiment 6: Supermarket Command Line Application
 * Node.js & MongoDB CLI Search & Price Sorting
 * 
 * Usage:
 *   npm install mongoose (optional if running live MongoDB)
 *   node supermarket_cli.js [query]
 * Example:
 *   node supermarket_cli.js Milk
 *   node supermarket_cli.js P104
 */

let mongoose = null;
try {
    mongoose = require('mongoose');
} catch (e) {
    mongoose = null;
}

// Seed Dataset of 10 Products with all required fields
const initialProducts = [
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
];

async function runCLI() {
    const searchTerm = process.argv[2] || "Milk";

    if (mongoose) {
        try {
            const productSchema = new mongoose.Schema({
                productId: { type: String, required: true },
                name: { type: String, required: true },
                brand: { type: String, required: true },
                category: { type: String, required: true },
                price: { type: Number, required: true },
                stock: { type: Number, required: true }
            });

            // Prevent re-compiling model if already defined
            const Product = mongoose.models.products || mongoose.model('products', productSchema);

            // Connect to MongoDB with 2-second timeout
            await mongoose.connect('mongodb://127.0.0.1:27017/supermarket', {
                serverSelectionTimeoutMS: 2000
            });

            console.log(" Connected to MongoDB Database: 'supermarket'");

            // Seed 10 products if empty
            const count = await Product.countDocuments();
            if (count === 0) {
                await Product.insertMany(initialProducts);
                console.log(" Seeded 10 products successfully into 'products' collection.");
            }

            // Query by productId or name (case-insensitive) and sort by price ascending
            const results = await Product.find({
                $or: [
                    { productId: searchTerm },
                    { name: new RegExp(searchTerm, 'i') },
                    { category: new RegExp(searchTerm, 'i') }
                ]
            }).sort({ price: 1 });

            console.log(`\n================ SEARCH RESULTS FOR '${searchTerm}' (SORTED BY PRICE ASCENDING) ================`);
            console.table(results.map(p => ({
                "Product ID": p.productId,
                "Name": p.name,
                "Brand": p.brand,
                "Category": p.category,
                "Price (Rs)": p.price,
                "Stock": p.stock
            })));

            await mongoose.connection.close();
            console.log(" MongoDB connection closed successfully.\n");
            return;

        } catch (err) {
            console.warn("\n [NOTICE] MongoDB connection error or daemon not running (127.0.0.1:27017).");
            console.log(" Running in Demonstrative Mode using Seed Dataset:\n");
        }
    } else {
        console.log("\n [INFO] 'mongoose' module not installed (Run 'npm install mongoose' for live DB).");
        console.log(" Running in Demonstrative Mode using Seed Dataset:\n");
    }

    // Demonstrative / Offline Fallback execution
    const filtered = initialProducts.filter(p => 
        p.productId.toLowerCase() === searchTerm.toLowerCase() ||
        p.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
        p.category.toLowerCase().includes(searchTerm.toLowerCase())
    ).sort((a, b) => a.price - b.price);

    console.log(`================ SEARCH RESULTS FOR '${searchTerm}' (SORTED BY PRICE ASCENDING) ================`);
    if (filtered.length === 0) {
        console.log(`No products found matching '${searchTerm}'.`);
    } else {
        console.table(filtered.map(p => ({
            "Product ID": p.productId,
            "Name": p.name,
            "Brand": p.brand,
            "Category": p.category,
            "Price (Rs)": p.price,
            "Stock": p.stock
        })));
    }
}

runCLI();
