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
        <br><br>
            <h2>ลบข้อมูลหน่วยงาน</h2>
    
            <br><br><br>
            <?php echo "<br>Are u sure to DELETE this Agency (?)";?><br><br>
            <table>
                <tr>
                        <th>ID</th>
                        <th>ชื่อหน่วยงาน</th>
                </tr>
            <?php echo 
                    "<tr>
                    <td>$Agency->A_ID</td>
                    <td>$Agency->A_Name</td>
                    </tr>";
            ?>
            </table><br>

            <form method="get" action="" class="container">
                <input type="hidden" name="controller" value="Agency"/>
                <input type="hidden" name="A_ID" value="<?php echo $Agency->A_ID;?>"/>
                <button class="btn-submit" type="submit" name="action" value="index_Agency">Back</button>
                <button class="btn-submit2" type="submit" name="action" value="Delete">Delete</button>
            </form><br>
        </center>
    </body>
</html>
