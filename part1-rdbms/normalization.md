## Anomaly Analysis

### Insert Anomaly
In this dataset, product information is stored together with order information. Because of this structure, a new product cannot be added unless there is already an order for it.

For example, the product **Laptop (product_id = P001)** appears in rows such as **ORD1061**, **ORD1098**, and **ORD1131**. These rows contain the product details in the columns `product_id`, `product_name`, `category`, and `unit_price`. If the company wants to add a new product to its catalog but no customer has ordered it yet, there is no way to store the product information without creating an order record. This is an insert anomaly.

Columns involved: `product_id`, `product_name`, `category`, `unit_price`.

---

### Update Anomaly
Customer information is repeated across multiple rows in the table. For instance, the customer **Priya Sharma (customer_id = C002)** appears in several rows such as **ORD1027**, **ORD1002**, **ORD1037**, and **ORD1048**.

In each of these rows, the columns `customer_name`, `customer_email`, and `customer_city` contain the same values: *Priya Sharma*, *priya@gmail.com*, and *Delhi*. If Priya Sharma changes her email or moves to another city, every row containing her information would need to be updated. If one row is missed, the database will contain inconsistent data. This situation represents an update anomaly.

Columns involved: `customer_id`, `customer_name`, `customer_email`, `customer_city`.

---

### Delete Anomaly
Deleting an order row may also remove important product information. In the dataset, the product **Webcam (product_id = P008)** appears only in the row **ORD1185**.

This row contains the product details in the columns `product_id`, `product_name`, `category`, and `unit_price`. If this order record were deleted, all information about the product “Webcam” would also disappear from the table, even though the company might still sell that product. This is a delete anomaly.

Columns involved: `product_id`, `product_name`, `category`, `unit_price`.
