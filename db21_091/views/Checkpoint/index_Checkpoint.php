<!DOCTYPE html>

<html>
    <head>
        <style>
            table {
                background: #fff;
                border-collapse: collapse;
                width: 90%;
                border-radius: 10px;
                box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.2);
            }
            th{
                background-color: #FF99FF;
                color: black;
            }
            tr:hover{background-color: #f3e5f5}
            th, td {
                text-align: left;
                padding: 8px;
            }
            td{
                border-bottom: 1px none #f3e5f5;
            }

        </style>
    </head>
    <body>
        <center>
        <br><br><br>
        <form method="GET" action="" class="container">
            <input class="textbox" type="text" name="key">
            <input class="textbox" type="hidden" name="controller" value="Checkpoint"/>
            <button class="btn-submit" name="action" value="search">Search</button>
        </form>
        <br><br>
        เพิ่มข้อมูลสถานที่ตรวจ ATK <br><br>
        <li class="item button"><a href="?controller=Checkpoint&action=newCheckpoint">Add</a></li>
        <br><br>

    <table>
        <tr>
            <th>ID</th>
            <th>ID หน่วยงานที่รับผิดชอบ</th>
            <th>ชื่อสถานที่</th>
            <th>เขต/อำเภอ</th>
            <th>จังหวัด</th>
            <th>เบอร์โทรติดต่อ</th>
            <th>เบอร์โทรติดต่อ (สำรอง)</th>
            <th>จำนวนที่รองรับได้ทั้งหมด (คน)</th>
            <th width="7%">Update</th>
            <th width="7%">Delete</th>
        </tr>

    <?php 
        foreach($Checkpoint_List as $Checkpoint)
        {   
            echo "<tr>
                <td>$Checkpoint->CP_ID</td>
                <td>$Checkpoint->A_ID</td>
                <td>$Checkpoint->CP_name</td>
                <td>$Checkpoint->CP_county</td>
                <td>$Checkpoint->CP_province</td>
                <td>$Checkpoint->CP_tel1</td>
                <td>$Checkpoint->CP_tel2</td>
                <td>$Checkpoint->CP_max</td>
                <td><a href=?controller=Checkpoint&action=update_Checkpoint&CP_ID=$Checkpoint->CP_ID>Update</a></td>
                <td><a href=?controller=Checkpoint&action=delete_Checkpoint&CP_ID=$Checkpoint->CP_ID>Delete</a></td>
            </tr>";
        }
        echo "</table>";
    ?>
    <br><br><br><br>
    </center>
    </body>

</html>

