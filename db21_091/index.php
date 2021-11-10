<!doctype html>
<?php
if(isset($_GET['controller'])&&isset($_GET['action']))
{
    $controller = $_GET['controller'];
    $action = $_GET['action'];
}else
{
    $controller = 'pages';
    $action = 'home';
}?>
<html>
    <head>
        <title>ATK PROJECT</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="main.css">
        <style></style>
    </head>
    <body>

        <nav>
            <ul class="menu">
                <li class="logo"><a href="#">ส่วนที่ 1 : นภัส 6220502132</a></li>
                <li class="item"><a href="http://158.108.207.4/db21/">ว้าปปป</a></li>
                <li class="item"><a href="?controller=pages&action=home">Home</a></li>
                <li class="item"><a href="?controller=Agency&action=index_Agency">หน่วยงาน</a></li>
                <li class="item"><a href="?controller=Checkpoint&action=index_Checkpoint">จุดตรวจ</a></li>
                <li class="item"><a href="?controller=SetDateCheckpoint&action=index_SetDateCheckpoint">กำหนดวันตรวจ</a></li>
                <li class="item button"><a href="https://popcat.click/">Click เล่นเพลินๆ</a></li>

                <li class="toggle"><a href="#"><i class="fas fa-bars"></i></a></li>
            </ul>
        </nav>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="script.js"></script>

       
        <?php require_once("./routes.php");?>  
        

        

    </body>
</html>