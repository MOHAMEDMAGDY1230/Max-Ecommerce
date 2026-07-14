<?php
// الاتصال بقاعدة البيانات
include('db.php');

// قراءة البيانات من ملف JSON
$products = json_decode(file_get_contents('products.json'), true);

// إدخال البيانات إلى قاعدة البيانات
foreach ($products as $product) {
    $img = $product['img'];
    $name = $product['name'];
    $price = $product['price'];
    $old_price = isset($product['old_price']) ? $product['old_price'] : NULL;
    $category = $product['catetory'];

    $sql = "INSERT INTO products (img, name, price, old_price, category) VALUES ('$img', '$name', '$price', '$old_price', '$category')";
    
    if (mysqli_query($conn, $sql)) {
        echo "Product '$name' added successfully<br>";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}
?>
