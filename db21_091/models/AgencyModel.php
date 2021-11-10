<?php
class Agency{

    public $A_ID;
    public $A_Name;
   
    public function __construct($A_ID,$A_Name)
    {
        $this->A_ID = $A_ID;
        $this->A_Name = $A_Name;
    }

    public static function getAll()
    {
        $AgencyList = [];
        require("connection_connect.php");
        $sql = "SELECT * from Agency";
        $result = $conn->query($sql);
        while($row = $result->fetch_assoc())
        {
            $A_ID = $row[A_ID];
            $A_Name = $row[A_Name];
            $AgencyList[] = new Agency($A_ID,$A_Name);
        }
        require("connection_close.php");

        return $AgencyList;
    }

    public static function get($A_ID)
    {
        require("connection_connect.php");
        $sql = "SELECT * from Agency WHERE A_ID='$A_ID'";
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
        $A_ID = $row[A_ID];
        $A_Name = $row[A_Name];
        require("connection_close.php");
        return new Agency($A_ID,$A_Name);
    }

    public static function search($key)
    {
        $AgencyList = [];
        require("connection_connect.php");
        $sql = "SELECT * from Agency where (A_ID like'%$key%' or A_Name like'%$key%')";

        $result = $conn->query($sql);
        while($row = $result->fetch_assoc())
        {
            $A_ID = $row[A_ID];
            $A_Name = $row[A_Name];
            $AgencyList[] = new Agency($A_ID,$A_Name);
        }
        require("connection_close.php");

        return $AgencyList;
    }

    public static function add($A_ID,$A_Name)
    {
        require("connection_connect.php");
        $sql = "INSERT INTO `Agency`(`A_ID`,`A_Name`) VALUES ('$A_ID','$A_Name')";
        $result = $conn->query($sql);
        require("connection_close.php");
       
        return ;
    }

    public static function update($A_ID,$A_Name)
    {
        require("connection_connect.php");
        $sql = "UPDATE Agency SET A_Name='$A_Name' WHERE A_ID='$A_ID'";
        $result = $conn->query($sql);
        require("connection_close.php");
        
        return "update success $result row";
    }

    public static function delete($A_ID)
    {
        require_once("connection_connect.php");
        $sql = "DELETE from Agency WHERE A_ID='$A_ID'";
        $result = $conn->query($sql);
        require("connection_close.php");

        return "delete success $result row";
    }

}?>