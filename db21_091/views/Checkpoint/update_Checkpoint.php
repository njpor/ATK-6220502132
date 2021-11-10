<body>
<form method = "get" action = "" class="container" >
<br><br><br>
<h2>แก้ไขข้อมูลสถานที่ตรวจ ATK</h2>
    <br><br><br>
    <label>ID<br><input class="textbox" type="text" name="CP_ID"
        value="<?php echo $Checkpoint->CP_ID; ?>" readonly/></label><br>

    <label>ชื่อสถานที่ <br><input class="textbox" type="text" name="CP_name"
        value="<?php echo $Checkpoint->CP_name; ?>"/></label><br>

    <label>เขต/อำเภอ<br><input class="textbox" type="text" name="CP_county"
        value="<?php echo $Checkpoint->CP_county; ?>"/></label><br>

    <label>จังหวัด<br><input class="textbox" type="text" name="CP_province"
        value="<?php echo $Checkpoint->CP_province; ?>"/></label><br>

    <label>เบอร์โทรติดต่อ<br><input class="textbox" type="text" name="CP_tel1"
        value="<?php echo $Checkpoint->CP_tel1; ?>"/></label><br>

    <label>เบอร์โทรติดต่อ (สำรอง)<br><input class="textbox" type="text" name="CP_tel2"
        value="<?php echo $Checkpoint->CP_tel2; ?>"/></label><br>

    <label>จำนวนที่รองรับได้ทั้งหมด (คน)<br><input class="textbox" type="text" name="CP_max"
        value="<?php echo $Checkpoint->CP_max; ?>"/></label><br>

    <label>หน่วยงานที่รับผิดชอบ<br><select class="textbox2" name="A_ID">
        <?php foreach($Agency_List as $A)
        {
            echo "<option value=$A->A_ID";
            if($A->A_ID==$Checkpoint->A_ID){echo " selected='selected'";}
            echo ">$A->A_Name</option>";
        }?>
    </select></label><br>

    <input type="hidden" name="controller" value="Checkpoint"/><br>
    <button class="btn-submit" type="submit" name="action" value="index_Checkpoint">Back</button>
    <button class="btn-submit2" type="submit" name="action" value="update">Save</button>

    <br><br><br>
</form>
</body>