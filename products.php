<?php
// الاتصال بقاعدة البيانات
include('db.php');

$sql = "SELECT * FROM products";
$result = mysqli_query($conn, $sql);
?>

<div class="product-list">
<?php
if (mysqli_num_rows($result) > 0) {
    while ($product = mysqli_fetch_assoc($result)) {
        echo "<div class='product'>
                <img src='" . $product['img'] . "' alt='" . $product['name'] . "'>
                <h3>" . $product['name'] . "</h3>
                <p>Price: $" . $product['price'] . "</p>
                <p>Category: " . $product['category'] . "</p>
              </div>";
    }
} else {
    echo "No products available.";
}
?>
</div>
