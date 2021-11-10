<body>
    <form method = "get" action = "" class="container">
    <br><br><br>
    <h2>แก้ไขวันที่ที่มีการตรวจ ATK</h2>
    <br><br><br>    
    <label>ID<br><input class="textbox" type="text" name="SDP_ID"
        value="<?php echo $SetDateCheckpoint->SDP_ID; ?>" readonly/></label><br>

    <label>วันที่ที่มีการตวจ ATK<br><input class="textbox" type="date" name="SDP_date" 
        value="<?php echo date("Y-m-d",strtotime($SetDateCheckpoint->SDP_date));?>"/></label><br>
    
    <label>สถานที่ตรวจ ATK<br><select class="textbox2" name="CP_ID">
        <?php foreach($Checkpoint_List as $CP)
        {
            echo "<option value=$CP->CP_ID";
            if($CP->CP_ID==$SetDateCheckpoint->CP_ID){echo " selected='selected'";}
            echo "> $CP->CP_name</option>";
        }?>
    </select></label><br>

    <input type="hidden" name="controller" value="SetDateCheckpoint"/><br>
    <button class="btn-submit" type="submit" name="action" value="index_SetDateCheckpoint">Back</button>
    <button class="btn-submit2" type="submit" name="action" value="update">Save</button>
     <br><br><br>
</form>

   
</body>
