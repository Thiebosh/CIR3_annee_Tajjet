<?php
require_once(__DIR__."/../abstract/Manager.php");
require_once(__DIR__."/../entity/Channel.php");

class ChannelManager extends Manager {
    public function readById($idChannel) {
        $query = "SELECT * 
                    FROM Channel 
                    WHERE ID_channel = :id";
        $table = array('id' => $idChannel);

        $request = parent::getDBConnect()->prepare($query);
        if (!request->execute($table)) throw new Exception("Base De Donnéez : Echec d'exécution");

        $result = $request->fetchAll(PDO::FETCH_ASSOC);
        
        return new Channel($result[0]);
    }
}

