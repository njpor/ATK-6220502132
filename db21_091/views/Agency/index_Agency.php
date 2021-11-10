<!DOCTYPE html>

<html>
    <head>
        <style>
            table {
                background: #fff;
                border-collapse: collapse;
                width: 40%;
                border-radius: 10px;
                box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.2);
            }
            th{
                background-color: #66CCCC;
                color: black;
            }
            tr:hover{background-color: #E0FFFF}
            th, td {
                text-align: left;
                padding: 8px;
            }
            td{
                border-bottom: 1px none #E0FFFF;
            }

        </style>
    </head>
    <body>
        <center>
        <br><br><br>
        <form method="GET" action="" class="container">
            <input class="textbox" type="text" name="key">
            <input class="textbox" type="hidden" name="controller" value="Agency"/>
            <button class="btn-submit" type="submit" name="action" value="search">Search</button>
        </form>
        <br>
        <br>
        เพิ่มข้อมูลหน่วยงาน <br><br>
        <li class="item button"><a href="?controller=Agency&action=newAgency">Add</a></li>
        <br><br>

    <table>
        <tr>
            <th>ID</th>
            <th>ชื่อหน่วยงาน</th>
            <th width="7%">Update</th>
            <th width="7%";>Delete</th>
        </tr>

    <?php 
        foreach($Agency_List as $Agency)
        {
            echo "<tr>
                <td>$Agency->A_ID</td>
                <td>$Agency->A_Name</td>
                <td><a href=?controller=Agency&action=update_Agency&A_ID=$Agency->A_ID>Update</a></td>
                <td><a href=?controller=Agency&action=delete_Agency&A_ID=$Agency->A_ID>Delete</a></td>
            </tr>";
        }
        echo "</table>";
    ?>
    </center>
    <br><br><br><br>
    </body>
</html>

