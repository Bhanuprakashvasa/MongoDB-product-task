1.Find all the information about each products
ans:db.products.find({})

2.Find the product price which are between 400 to 800
ans:db.products.find({product_price: {$gte:400, $lte:800}}).sort({product_price:1})

3.Find the product price which are not between 400 to 600
ans:db.products.find({product_price: {$not: {$gte:400, $lte:600}}}).sort({product_price:1})

4.List the four product which are grater than 500 in price
ans:db.products.find({product_price: {$gte: 500}}).sort({product_price:1}).limit(4)

5.Find the product name and product material of each products
ans:db.products.find({},{_id:1,product_name:1, product_material:1})

6.Find the product with a row id of 10
ans:db.products.find({id:"10"})

7.Find only the product name and product material
ans:db.products.find({},{_id:0,product_name:1, product_material:1})

8.Find all products which contain the value of soft in product material 
ans:db.products.find({product_material: 'Soft'})

9.Find products which contain product color indigo  and product price 492.00
ans:db.products.find({{product_price: 492.00},{product_color:"indigo"}})

10.Delete the products which product price value are same
ans:db.products.remove({{product_price: }})