<?php
class PagesController
{    public function Home()
    {    require_once('views/pages/home.php');    }
    public function error() 
    {    require_once('views/pages/error.php');    }

}
?>