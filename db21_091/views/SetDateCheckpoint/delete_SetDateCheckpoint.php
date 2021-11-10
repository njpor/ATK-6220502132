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
        <br><br><br>
        <h2>ลบวันที่ที่มีการตรวจ ATK</h2>
        <br><br><br>
        <br><br>
            <?php echo "<br>Are u sure to DELETE this SetDateCheckpoint (?)";?><br><br>
            <table>
                <tr>
                        <th>ID</th>
                        <th>ID สถานที่ตรวจ ATK</th>
                        <th>วันที่ที่มีการตวจ ATK</th>
                </tr>
            <?php echo 
                    "<tr>
                    <td>$SetDateCheckpoint->SDP_ID</td>
                    <td>$SetDateCheckpoint->CP_ID</td>
                    <td>$SetDateCheckpoint->SDP_date</td>
                    </tr>";
            ?>
            </table><br>

            <form method="get" action="" class="container">
                <input type="hidden" name="controller" value="SetDateCheckpoint"/>
                <input type="hidden" name="SDP_ID" value="<?php echo $SetDateCheckpoint->SDP_ID;?>"/>
                <button class="btn-submit" type="submit" name="action" value="index_SetDateCheckpoint">Back</button>
                <button class="btn-submit2" type="submit" name="action" value="Delete">Delete</button>
            </form><br>
        </center> 
    </body>
</html>