<?php
class SetDateCheckpoint{

    public $SDP_ID;
    public $CP_ID;
    public $SDP_date;

    public function __construct($SDP_ID,$CP_ID,$SDP_date)
    {
        $this->SDP_ID = $SDP_ID;
        $this->CP_ID = $CP_ID;
        $this->SDP_date = $SDP_date;
    }

    public static function getAll()
    {
        $SetDateCheckpointList = [];
        require("connection_connect.php");
        $sql = "SELECT * from SetDateCheckpoint Natural Join CheckpointA";
        $result = $conn->query($sql);
        while($row = $result->fetch_assoc())
        {
            $SDP_ID = $row[SDP_ID];
            $CP_ID= $row[CP_ID];
            $SDP_date = $row[SDP_date];
            $SetDateCheckpointList[] = new SetDateCheckpoint($SDP_ID,$CP_ID,$SDP_date);
        }
        require("connection_close.php");

        return $SetDateCheckpointList;
    }

    public static function get($SDP_ID)
    {
        require("connection_connect.php");
        $sql = "SELECT * from SetDateCheckpoint Natural Join CheckpointA WHERE SDP_ID='$SDP_ID'";
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
        $SDP_ID = $row[SDP_ID];
        $CP_ID= $row[CP_ID];
        $SDP_date = $row[SDP_date];
        require("connection_close.php");
        return new SetDateCheckpoint($SDP_ID,$CP_ID,$SDP_date);
    }

    public static function search($key)
    {
        $SetDateCheckpointList = [];
        require("connection_connect.php");
        $sql = "SELECT * from SetDateCheckpoint where (SDP_ID like'%$key%' or CP_ID like'%$key%' or SDP_date like'%$key%')";

        $result = $conn->query($sql);
        while($row = $result->fetch_assoc())
        {
            $SDP_ID = $row[SDP_ID];
            $CP_ID= $row[CP_ID];
            $SDP_date = $row[SDP_date];
            $SetDateCheckpointList[] = new SetDateCheckpoint($SDP_ID,$CP_ID,$SDP_date);
        }
        require("connection_close.php");

        return $SetDateCheckpointList;
    }

    public static function add($SDP_ID,$CP_ID,$SDP_date)
    {
        require("connection_connect.php");
        $sql = "INSERT INTO `SetDateCheckpoint`(`SDP_ID`,`CP_ID`,`SDP_date`) 
                VALUES ('$SDP_ID','$CP_ID','$SDP_date')";
        $result = $conn->query($sql);
        require("connection_close.php");
       
        return ;
    }

    public static function update($SDP_ID,$CP_ID,$SDP_date)
    {
        require("connection_connect.php");
        $sql = "UPDATE SetDateCheckpoint SET CP_ID='$CP_ID',SDP_date='$SDP_date' WHERE SDP_ID='$SDP_ID'";
        $result = $conn->query($sql);
        require("connection_close.php");
        
        return "update success $result row";
    }

    public static function delete($SDP_ID)
    {
        require_once("connection_connect.php");
        $sql = "DELETE from SetDateCheckpoint WHERE SDP_ID='$SDP_ID'";
        $result = $conn->query($sql);
        require("connection_close.php");

        return "delete success $result row";
    }

}?>