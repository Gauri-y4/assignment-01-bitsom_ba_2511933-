// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  { _id: "E101", product_name: "Smartphone X", category: "Electronics", price: 45000 },
  { _id: "C201", product_name: "Men's Denim Jacket", category: "Clothing", price: 3500 },
  { _id: "G301", product_name: "Organic Almond Milk", category: "Groceries", price: 250, expiry_date: new Date("2024-12-20") }
]);

// OP2: find electronics products > 20000
db.products.find({ category: "Electronics", price: { $gt: 20000 } });

// OP3: groceries expiring before 2025
db.products.find({ category: "Groceries", expiry_date: { $lt: new Date("2025-01-01") } });

// OP4: updateOne add discount
db.products.updateOne(
  { _id: "E101" },
  { $set: { discount_percent: 10 } }
);

// OP5: create index on category
db.products.createIndex({ category: 1 });
