<html>
    <head>
        <style>
            table {
                background: #fff;
                border-collapse: collapse;
                width: 80%;
                border-radius: 10px;
                box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.2);
            }
            th{
                background-color: #BDB76B;
                color: black;
            }
            tr:hover{background-color: #FAFAD2}
            th, td {
                text-align: left;
                padding: 8px;
            }
            td{
                border-bottom: 1px none #FAFAD2;
            }

        </style>
    </head>
    <body>
        <center>
        <br><br>
        <h2>ลบข้อมูลสถานที่ตรวจ ATK</h2>
        <br><br><br>
        <?php echo "<br>Are u sure to DELETE this Checkpoint (?)";?><br><br>

        <table>
            <tr>
                    <th>ID</th>
                    <th>หน่วยงานที่รับผิดชอบ</th>
                    <th>ชื่อสถานที่</th>
                    <th>เขต/อำเภอ</th>
                    <th>จังหวัด</th>
                    <th>เบอร์โทรติดต่อ</th>
                    <th>เบอร์โทรติดต่อ (สำรอง)</th>
                    <th>จำนวนที่รองรับได้ทั้งหมด (คน)</th>
            </tr>
        <?php echo 
                "<tr>
                <td>$Checkpoint->CP_ID</td>
                <td>$Checkpoint->A_ID</td>
                <td>$Checkpoint->CP_name</td>
                <td>$Checkpoint->CP_county</td>
                <td>$Checkpoint->CP_province</td>
                <td>$Checkpoint->CP_tel1</td>
                <td>$Checkpoint->CP_tel2</td>
                <td>$Checkpoint->CP_max</td>
                </tr>";
        ?>
        </table><br>

        <form method="get" action="" class="container">
            <input type="hidden" name="controller" value="Checkpoint"/>
            <input type="hidden" name="CP_ID" value="<?php echo $Checkpoint->CP_ID;?>"/>
            <button class="btn-submit" type="submit" name="action" value="index_Checkpoint">Back</button>
            <button class="btn-submit2" type="submit" name="action" value="Delete">Delete</button>
        </form><br>       
    
        </center> 
    </body>
</html>