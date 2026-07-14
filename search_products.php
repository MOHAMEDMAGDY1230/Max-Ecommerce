<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <!-- إضافة CSS داخل الوسم <head> -->
    <style>
        /* تنسيق قائمة المنتجات */
        .product-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
            justify-content: center;
        }

        /* تنسيق كل منتج */
        .product-item {
            border: 1px solid #ddd;
            padding: 20px;
            text-align: center;
            background-color: #fff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .product-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }

        /* تنسيق صورة المنتج */
        .product-img {
            width: 100%;
            height: auto;
            max-width: 200px;
            margin-bottom: 15px;
            border-radius: 8px;
        }

        /* تنسيق اسم المنتج */
        .product-item h3 {
            font-size: 1.3em;
            margin: 10px 0;
            color: #333;
            font-weight: 600;
        }

        /* تنسيق السعر داخل بوكس */
        .product-item .price {
            font-size: 1.4em;
            font-weight: bold;
            color: #e74c3c;
            background-color: #f9f9f9;
            padding: 10px;
            border-radius: 5px;
            display: inline-block;
            margin: 10px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        /* تنسيق فئة المنتج */
        .product-item .category {
            font-size: 0.9em;
            color: #888;
        }

        /* تأثير تظليل على الزر */
        .product-item button {
            background-color: #ff8716;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .product-item button:hover {
            background-color: #2980b9;
        }

    </style>
</head>
<body>

    <?php
    include('db.php'); // تأكد من تضمين ملف الاتصال بقاعدة البيانات

    // استلام قيمة البحث من النموذج
    $search = isset($_GET['search']) ? $_GET['search'] : ''; 

    // استعلام البحث في قاعدة البيانات
    $sql = "SELECT * FROM products WHERE name LIKE '%$search%' OR category LIKE '%$search%'";
    $result = mysqli_query($conn, $sql);

    // التحقق من وجود نتائج
    if (mysqli_num_rows($result) > 0) {
        // عرض المنتجات بشكل مرتب باستخدام grid
        echo "<div class='product-list'>";
        while ($product = mysqli_fetch_assoc($result)) {
            echo "<div class='product-item'>
                    <img src='" . $product['img'] . "' alt='" . $product['name'] . "' class='product-img'>
                    <h3>" . $product['name'] . "</h3>
                    <p class='price'>$" . $product['price'] . "</p>
                    <p class='category'>" . $product['category'] . "</p>
                    <button>Add to Cart</button>
                  </div>";
        }
        echo "</div>";
    } else {
        echo "<p>No products found for your search.</p>";
    }
    ?>

</body>
</html>
