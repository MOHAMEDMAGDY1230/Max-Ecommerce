<?php
include 'db.php'; // الاتصال بقاعدة البيانات

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $hashed_password = password_hash($password, PASSWORD_DEFAULT); // تشفير كلمة المرور

    // التحقق إذا كان البريد الإلكتروني موجودًا مسبقًا
    $sql = "SELECT * FROM users WHERE email = '$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "البريد الإلكتروني موجود بالفعل.";
    } else {
        // إدخال البيانات في جدول المستخدمين
        $sql = "INSERT INTO users (first_name, last_name, username, email, password) 
                VALUES ('$first_name', '$last_name', '$username', '$email', '$hashed_password')";
        
        if ($conn->query($sql) === TRUE) {
            echo "تم التسجيل بنجاح!";
            header("Location: login.html"); // التوجيه إلى صفحة تسجيل الدخول بعد التسجيل الناجح
            exit;
        } else {
            echo "حدث خطأ أثناء التسجيل: " . $conn->error;
        }
    }
}

$conn->close();
?>
