<body>
    

<form method = "get" action = "" class="container">
<br><br><br>
    <h2>เพิ่มข้อมูลสถานที่ตรวจ ATK</h2>
    <br><br><br>
    <label>ID<br><input class="textbox" type="text" name="CP_ID" placeholder="input your ID - CPXXX"/></label><br>
    <label>ชื่อสถานที่ <br><input class="textbox" type="text" name="CP_name" placeholder=""/></label><br>
    <label>เขต/อำเภอ<br><input class="textbox" type="text" name="CP_county" placeholder=""/></label><br>
    <label>จังหวัด<br><input class="textbox" type="text" name="CP_province" placeholder=""/></label><br>
    <label>เบอร์โทรติดต่อ<br><input class="textbox" type="text" name="CP_tel1" placeholder="0XX-XXXXXXX"/></label><br>
    <label>เบอร์โทรติดต่อ (สำรอง)<br><input class="textbox" type="text" name="CP_tel2" placeholder="0XX-XXXXXXX"/></label><br>
    <label>จำนวนที่รองรับได้ทั้งหมด (คน)<br><input class="textbox" type="text" name="CP_max" placeholder="XXXX"/></label><br>

    <label>หน่วยงานที่รับผิดชอบ<br><select class="textbox2" name="A_ID">
        <?php foreach($Agency_List as $A)
        {
            echo "<option value=$A->A_ID > $A->A_Name</option>";
        }?>
    </select></label><br>

    <input type="hidden" name="controller" value="Checkpoint"/><br>
    <button class="btn-submit" type="submit" name="action" value="index_Checkpoint">Back</button>
    <button class="btn-submit2" type="submit" name="action" value="addCheckpoint">Save</button>

    <br><br><br>
</form></body>