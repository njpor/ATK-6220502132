<?php
class SetDateCheckpointController
{

    public function index_SetDateCheckpoint()
    {
        $SetDateCheckpoint_List = SetDateCheckpoint::getAll();
        require_once("./views/SetDateCheckpoint/index_SetDateCheckpoint.php");
    }

    public function newSetDateCheckpoint()
    {
        $SetDateCheckpoint_List = SetDateCheckpoint::getAll();
        $Checkpoint_List = Checkpoint::getAll();
        require_once("./views/SetDateCheckpoint/newSetDateCheckpoint.php");
    }

    public function addSetDateCheckpoint()
    {
        $SDP_ID = $_GET['SDP_ID'];
        $CP_ID = $_GET['CP_ID'];
        $SDP_date = $_GET['SDP_date'];
        SetDateCheckpoint::add($SDP_ID,$CP_ID,$SDP_date);
        SetDateCheckpointController::index_SetDateCheckpoint();
    }

    public function search()
    {
        $key=$_GET['key'];
        $SetDateCheckpoint_List = SetDateCheckpoint::search($key);
        require_once("./views/SetDateCheckpoint/index_SetDateCheckpoint.php");
    }

    public function update_SetDateCheckpoint()
    {
        $SDP_ID=$_GET['SDP_ID'];
        $SetDateCheckpoint = SetDateCheckpoint::get($SDP_ID);
        $Checkpoint_List = Checkpoint::getAll();
        require_once('./views/SetDateCheckpoint/update_SetDateCheckpoint.php');
    }

    public function update()
    {
        $SDP_ID = $_GET['SDP_ID'];
        $CP_ID = $_GET['CP_ID'];
        $SDP_date = $_GET['SDP_date'];
        SetDateCheckpoint::update($SDP_ID,$CP_ID,$SDP_date);
        SetDateCheckpointController::index_SetDateCheckpoint();
    }

    public function delete_SetDateCheckpoint()
    {
        $SDP_ID = $_GET['SDP_ID'];
        $SetDateCheckpoint = SetDateCheckpoint::get($SDP_ID);
        require_once('./views/SetDateCheckpoint/delete_SetDateCheckpoint.php');
    }

    public function Delete()
    {
        $SDP_ID=$_GET['SDP_ID'];
        SetDateCheckpoint::delete($SDP_ID);
        SetDateCheckpointController::index_SetDateCheckpoint();
    }


}?>