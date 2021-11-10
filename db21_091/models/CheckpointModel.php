<?php
class Checkpoint{

    public $CP_ID;
    public $A_ID;
    public $CP_name;
    public $CP_county;
    public $CP_province;
    public $CP_tel1;
    public $CP_tel2;
    public $CP_max;

    public function __construct($CP_ID,$A_ID,$CP_name,$CP_county,$CP_province,$CP_tel1,$CP_tel2,$CP_max)
    {
        $this->CP_ID = $CP_ID;
        $this->A_ID = $A_ID;
        $this->CP_name = $CP_name;
        $this->CP_county = $CP_county;
        $this->CP_province = $CP_province;
        $this->CP_tel1 = $CP_tel1;
        $this->CP_tel2 = $CP_tel2;
        $this->CP_max = $CP_max;
    }

    public static function getAll()
    {
        $CheckpointList = [];
        require("connection_connect.php");
        $sql = "SELECT * from CheckpointA Natural Join Agency";
        $result = $conn->query($sql);
        while($row = $result->fetch_assoc())
        {
            $CP_ID = $row[CP_ID];
            $A_ID = $row[A_ID];
            $CP_name = $row[CP_name];
            $CP_county = $row[CP_county];
            $CP_province = $row[CP_province];
            $CP_tel1 = $row[CP_tel1];
            $CP_tel2 = $row[CP_tel2];
            $CP_max = $row[CP_max];
            $CheckpointList[] = new Checkpoint($CP_ID,$A_ID,$CP_name,$CP_county,$CP_province,$CP_tel1,$CP_tel2,$CP_max);
        }
        require("connection_close.php");

        return $CheckpointList;
    }

    public static function get($CP_ID)
    {
        require("connection_connect.php");
        $sql = "SELECT * from CheckpointA Natural Join Agency WHERE CP_ID='$CP_ID' ";
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
        $CP_ID = $row[CP_ID];
        $A_ID = $row[A_ID];
        $CP_name = $row[CP_name];
        $CP_county = $row[CP_county];
        $CP_province = $row[CP_province];
        $CP_tel1 = $row[CP_tel1];
        $CP_tel2 = $row[CP_tel2];
        $CP_max = $row[CP_max];
        require("connection_close.php");
        return new Checkpoint($CP_ID,$A_ID,$CP_name,$CP_county,$CP_province,$CP_tel1,$CP_tel2,$CP_max);
    }

    public static function search($key)
    {
        $CheckpointList = [];
        require("connection_connect.php");
        $sql = "SELECT * from CheckpointA natural join Agency 
        where (CP_ID like'%$key%' or A_ID like'%$key%' or CP_name like'%$key%' or CP_county like'%$key%' or CP_province like'%$key%' or CP_tel1 like'%$key%' or CP_tel2 like'%$key%' or CP_max like'%$key%')
        and CheckpointA.A_ID=Agency.A_ID";

        $result = $conn->query($sql);
        while($row = $result->fetch_assoc())
        {
            $CP_ID = $row[CP_ID];
            $A_ID = $row[A_ID];
            $CP_name = $row[CP_name];
            $CP_county = $row[CP_county];
            $CP_province = $row[CP_province];
            $CP_tel1 = $row[CP_tel1];
            $CP_tel2 = $row[CP_tel2];
            $CP_max = $row[CP_max];
            $CheckpointList[] = new Checkpoint($CP_ID,$A_ID,$CP_name,$CP_county,$CP_province,$CP_tel1,$CP_tel2,$CP_max);
        }
        require("connection_close.php");
        return $CheckpointList;
    }

    public static function add($CP_ID,$A_ID,$CP_name,$CP_county,$CP_province,$CP_tel1,$CP_tel2,$CP_max)
    {
        require("connection_connect.php");
        $sql = "INSERT INTO `CheckpointA`(`CP_ID`,`A_ID`,`CP_name`,`CP_county`,`CP_province`,`CP_tel1`,`CP_tel2`,`CP_max`) VALUES ('$CP_ID','$A_ID','$CP_name','$CP_county','$CP_province','$CP_tel1','$CP_tel2','$CP_max')";
        $result = $conn->query($sql);
        require("connection_close.php");
        
        return ;
    }

    public static function update($CP_ID,$A_ID,$CP_name,$CP_county,$CP_province,$CP_tel1,$CP_tel2,$CP_max)
    {
        require("connection_connect.php");
        $sql = "UPDATE CheckpointA SET A_ID='$A_ID',CP_name='$CP_name',CP_county='$CP_county',CP_province='$CP_province',CP_tel1='$CP_tel1',CP_tel2='$CP_tel2',CP_max='$CP_max' WHERE CP_ID='$CP_ID'";
        $result = $conn->query($sql);
        require("connection_close.php");
        
        return "update success $result row";
    }

    public static function delete($CP_ID)
    {
        require_once("connection_connect.php");
        $sql = "DELETE from CheckpointA WHERE CP_ID='$CP_ID'";
        $result = $conn->query($sql);
        require("connection_close.php");

        return "delete success $result row";
    }

}?>