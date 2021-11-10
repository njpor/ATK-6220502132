
<body>
<form method = "get" action = "" class="container">
<br><br><br>
    <h2>เพิ่มข้อมูลหน่วยงาน</h2>
    
    <br><br><br>
    <label>รหัสหน่วยงาน (ID)<br><input class="textbox" type="text" name="A_ID" placeholder="input your ID - AXXX"/></label><br>

    <label>ชื่อหน่วยงาน (name)<br><input class="textbox" type="text" name="A_Name" placeholder="input your Agency name"/></label><br>
  

    <input type="hidden" name="controller" value="Agency"/><br>
    <button class="btn-submit" type="submit" name="action" value="index_Agency">Back</button>
    <button class="btn-submit2" type="submit" name="action" value="addAgency">Save</button>


    <br><br><br>
</form>
</body>