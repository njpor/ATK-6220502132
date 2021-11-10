<?php 
    $controllers = array('pages'=>['home', 'error']
    ,'Agency'=>['index_Agency','newAgency','addAgency','search','update_Agency','update','delete_Agency','Delete']
    ,'Checkpoint'=>['index_Checkpoint','newCheckpoint','addCheckpoint','search','update_Checkpoint','update','delete_Checkpoint','Delete']
    ,'SetDateCheckpoint'=>['index_SetDateCheckpoint','newSetDateCheckpoint','addSetDateCheckpoint','search','update_SetDateCheckpoint','update','delete_SetDateCheckpoint','Delete']); 

    function call($controller, $action)
    {
        require_once("controllers/".$controller."_controller.php");
        switch($controller)
        {
            case "pages":   $controller = new PagesController(); 
                            break;
            case "Agency":  require_once("./models/AgencyModel.php");
                            $controller = new AgencyController();
                            break;
            case "Checkpoint":  require_once("./models/CheckpointModel.php");
                                require_once("./models/AgencyModel.php");
                                $controller = new CheckpointController();
                                break;
            case "SetDateCheckpoint":   require_once("./models/SetDateCheckpointModel.php");
                                        require_once("./models/CheckpointModel.php");
                                        $controller = new SetDateCheckpointController();
                                        break;
            
                      
        }
        $controller->{$action}();
    }

    if(array_key_exists($controller, $controllers)) 
    {    
        if(in_array($action, $controllers[$controller]))
        {    
            call($controller, $action); 
        }
        else
        {    
            call('pages', 'error'); 
        }
    }
    else
    {    
        call('pages', 'error');
    } 
?>
