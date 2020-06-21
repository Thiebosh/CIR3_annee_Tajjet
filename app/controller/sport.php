<?php
require_once(__DIR__."/../model/manager/MuscleManager.php");
require_once(__DIR__."/../model/manager/SportManager.php");

$muscleList = (new MuscleManager)->readAll();

$sportList = (new MuscleManager)->readAll();

var_dump($sportList);

//2. appels bdd
//load bdd functions : require("../model/manager/*needed*.php");
//call managers functions (load data here)
$pageFill['exercice'] = array(
                            array("id" => 1,
                                    "name" => "Développé couché",
                                    "picture" => "url ou path",
                                    "calories" => 234,
                                    "muscles" => array("muscle1", "muscle2", "muscle3")
                                ),

                            array("id" => 2,
                                    "name" => "Tractions",
                                    "picture" => "url ou path",
                                    "calories" => 864,
                                    "muscles" => array("muscle2", "muscle4")
                                )
                            );

$pageFill['seance']=array(
                        array("id"=>1,
                            "exercices"=>array(
                                                array("id"=>1,
                                                    "name"=>"Développé couché",
                                                    "image"=>"Image développé couché",
                                                    "calories" => 234),
                                                array("id"=>2,
                                                    "name"=>"Tractions",
                                                    "image"=>"Image tractions",
                                                    "calories" => 86)
                            
                                            )

                            ),


                        );

//3. transforme donnees (post traitement)
//tranformations goes here
