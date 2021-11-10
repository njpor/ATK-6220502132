<?php
class CheckpointController
{

    public function index_Checkpoint()
    {
        $Checkpoint_List = Checkpoint::getAll();
        require_once("./views/Checkpoint/index_Checkpoint.php");
    }

    public function newCheckpoint()
    {
        $Checkpoint_List = Checkpoint::getAll();
        $Agency_List = Agency::getAll();
        require_once("./views/Checkpoint/newCheckpoint.php");
    }

    public function addCheckpoint()
    {
            $CP_ID = $_GET['CP_ID'];
            $A_ID = $_GET['A_ID'];
            $CP_name = $_GET['CP_name'];
            $CP_county = $_GET['CP_county'];
            $CP_province = $_GET['CP_province'];
            $CP_tel1 = $_GET['CP_tel1'];
            $CP_tel2 = $_GET['CP_tel2'];
            $CP_max = $_GET['CP_max'];
            Checkpoint::add($CP_ID,$A_ID,$CP_name,$CP_county,$CP_province,$CP_tel1,$CP_tel2,$CP_max);
            CheckpointController::index_Checkpoint();
    }

    public function search()
    {
        $key=$_GET['key'];
        $Checkpoint_List = Checkpoint::search($key);
        require_once("./views/Checkpoint/index_Checkpoint.php");
    }

    public function update_Checkpoint()
    {
        $CP_ID=$_GET['CP_ID'];
        $Checkpoint = Checkpoint::get($CP_ID);
        $Agency_List = Agency::getAll();
        require_once('./views/Checkpoint/update_Checkpoint.php');
    }

    public function update()
    {
        $CP_ID = $_GET['CP_ID'];
        $A_ID = $_GET['A_ID'];
        $CP_name = $_GET['CP_name'];
        $CP_county = $_GET['CP_county'];
        $CP_province = $_GET['CP_province'];
        $CP_tel1 = $_GET['CP_tel1'];
        $CP_tel2 = $_GET['CP_tel2'];
        $CP_max = $_GET['CP_max'];
        Checkpoint::update($CP_ID,$A_ID,$CP_name,$CP_county,$CP_province,$CP_tel1,$CP_tel2,$CP_max);
        CheckpointController::index_Checkpoint();
    }

    public function delete_Checkpoint()
    {
        $CP_ID = $_GET['CP_ID'];
        $Checkpoint = Checkpoint::get($CP_ID);
        require_once('./views/Checkpoint/delete_Checkpoint.php');
    }

    public function Delete()
    {
        $CP_ID=$_GET['CP_ID'];
        Checkpoint::delete($CP_ID);
        CheckpointController::index_Checkpoint();
    }


}?>