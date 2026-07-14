<?php
include 'db.php'; // الاتصال بقاعدة البيانات

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // التحقق من وجود المستخدم
    $sql = "SELECT * FROM users WHERE email = '$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        if (password_verify($password, $user['password'])) {
            // تسجيل الدخول ناجح
            session_start();
            $_SESSION['user_id'] = $user['id']; // حفظ id المستخدم في الجلسة
            header("Location: index.html"); // توجيه المستخدم إلى الصفحة الرئيسية
            exit;
        } else {
            echo "كلمة المرور غير صحيحة.";
        }
    } else {
        echo "المستخدم غير موجود.";
    }
}

$conn->close();
?>
