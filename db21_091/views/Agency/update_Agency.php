
<body>
    

<form method = "GET" action = "" class="container">
<br><br><br>
    <h2>แก้ไขข้อมูลหน่วยงาน</h2>
    
    <br><br><br>
    <label>รหัสหน่วยงาน (ID)<br> <input class="textbox" type="text" name="A_ID"
        value="<?php echo $Agency->A_ID; ?>" readonly/></label><br>

    <label>ชื่อหน่วยงาน (name)<br><input class="textbox" type="text" name="A_Name"
        value="<?php echo $Agency->A_Name; ?>"/></label><br>
    

    <input type="hidden" name="controller" value="Agency"/><br>
    <button class="btn-submit" type="submit" name="action" value="index_Agency">Back</button>
    <button class="btn-submit2" type="submit" name="action" value="update">Update</button>

    <br><br><br>
</form>
</body>
