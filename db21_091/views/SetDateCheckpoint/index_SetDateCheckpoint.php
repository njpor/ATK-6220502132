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
                background-color: #9370DB;
                color: black;
               
            }

            tr:hover{
                background-color: #CCCCFF;
            }
            th, td {
                text-align: left;
                padding: 8px;
            }
            td{
                border-bottom: 1px none #CCCCFF;
            }
        </style>
    </head>
    <body> 
        <center>
        <br><br><br>
        <form method="GET" action="" class="container">
            <input class="textbox" type="text" name="key">
            <input class="textbox" type="hidden" name="controller" value="SetDateCheckpoint"/>
            <button class="btn-submit" type="submit" name="action" value="search">Search</button>
        </form>
        <br><br>
        เพิ่มข้อมูลวันที่ที่มีการตรวจ ATK<br><br>
        <li class="item button"><a href="?controller=SetDateCheckpoint&action=newSetDateCheckpoint">Add</a></li>
        <br><br>
   
    <table>
        <tr>
            <th>ID</th>
            <th>ID สถานที่ตรวจ ATK</th>
            <th>วันที่ที่มีการตวจ ATK</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
  

           <?php 
        foreach($SetDateCheckpoint_List as $SetDateCheckpoint)
        {
            echo "<tr>
                <td>$SetDateCheckpoint->SDP_ID</td>
                <td>$SetDateCheckpoint->CP_ID</td>
                <td>$SetDateCheckpoint->SDP_date</td>
                <td><a href=?controller=SetDateCheckpoint&action=update_SetDateCheckpoint&SDP_ID=$SetDateCheckpoint->SDP_ID>Update</a></td>
                <td><a href=?controller=SetDateCheckpoint&action=delete_SetDateCheckpoint&SDP_ID=$SetDateCheckpoint->SDP_ID>Delete</a></td>
            </tr>";
        }
        echo "</table>";
    ?> 
    <br><br><br><br>
    </center>
    </body>
</html>

