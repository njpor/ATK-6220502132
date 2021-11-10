<?php
class AgencyController
{
    public function index_Agency()
    {
        $Agency_List = Agency::getAll();
        require_once("./views/Agency/index_Agency.php");
    }

    public function newAgency()
    {
        $Agency_List = Agency::getAll();
        require_once("./views/Agency/newAgency.php");
    }

    public function addAgency()
    {
        $A_ID = $_GET['A_ID'];
        $A_Name = $_GET['A_Name'];
        Agency::add($A_ID,$A_Name);
        AgencyController::index_Agency();
    }

    public function search()
    {
        $key=$_GET['key'];
        $Agency_List = Agency::search($key);
        require_once("./views/Agency/index_Agency.php");
    }

    public function update_Agency()
    {
        $A_ID=$_GET['A_ID'];
        $Agency = Agency::get($A_ID);
        require_once('./views/Agency/update_Agency.php');
    }

    public function update()
    {
        $A_ID = $_GET['A_ID'];
        $A_Name = $_GET['A_Name'];
        Agency::update($A_ID,$A_Name);
        AgencyController::index_Agency();
    }

    public function delete_Agency()
    {
        $A_ID = $_GET['A_ID'];
        $Agency = Agency::get($A_ID);
        require_once('./views/Agency/delete_Agency.php');
    }

    public function Delete()
    {
        $A_ID=$_GET['A_ID'];
        Agency::delete($A_ID);
        AgencyController::index_Agency();
    }

}?>