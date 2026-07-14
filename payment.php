<?php
// الاتصال بقاعدة البيانات
$conn = new mysqli("localhost", "root", "", "max ecommerce");

// التحقق من الاتصال
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// التحقق من إرسال النموذج
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // استلام البيانات مع تأمينها
    $full_name = $conn->real_escape_string($_POST['full_name']);
    $email = $conn->real_escape_string($_POST['email']);
    $address = $conn->real_escape_string($_POST['address']);
    $phone_number = $conn->real_escape_string($_POST['phone_number']);
    $country = $conn->real_escape_string($_POST['country']);
    $city = $conn->real_escape_string($_POST['city']);
    $card_name = $conn->real_escape_string($_POST['card_name']);
    $card_number = $conn->real_escape_string($_POST['card_number']);
    $exp_month = $conn->real_escape_string($_POST['exp_month']);
    $exp_year = intval($_POST['exp_year']);
    $cvv = $conn->real_escape_string($_POST['cvv']);

    // إدخال البيانات إلى قاعدة البيانات
    $sql = "INSERT INTO payments (full_name, email, address, phone_number, country, city, card_name, card_number, exp_month, exp_year, cvv) 
            VALUES ('$full_name', '$email', '$address', '$phone_number', '$country', '$city', '$card_name', '$card_number', '$exp_month', '$exp_year', '$cvv')";

    if ($conn->query($sql) === TRUE) {
        echo "Payment details saved successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// إغلاق الاتصال
$conn->close();
?>
