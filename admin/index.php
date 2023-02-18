<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <!-- CSS -->
    <link rel="stylesheet" href="css/styleadmin.css">
</head>
<!-- <?php
        session_start();
        if (!isset($_SESSION['dangnhap'])) {
            header('Location:login.php');
        }
        ?> -->

<body>
    <h1 class="title-admin">Welcome to Admin</h1>
    <div class="wrapper">
        <?php
        include("config/config.php");
        include("modules/header.php");
        include("modules/menu.php");
        include("modules/main.php");
        include("modules/footer.php");
        ?>
    </div>

    <!-- JQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <!-- CKeditor -->
    <script src="//cdn.ckeditor.com/4.20.1/standard/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('thongtinlienhe');
        CKEDITOR.replace('tomtat');
        CKEDITOR.replace('noidung');
    </script>
</body>

</html>