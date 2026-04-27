<?php

class Data {
    private $bdd;

    public function __construct() {
        try {
        $this->bdd = new PDO("mysql:host=localhost;dbname=e2clib_oli;charset=utf8","phpmyadmin","Ranked4Deut");
        } catch (Exception $e) {
            var_dump(("Problème de connexion à la base de données". $e->getMessage()));
        }
    }

    public function authentication($email) {
        $sql = "SELECT id, email, password FROM users WHERE email= :email";
        $statement = $this->bdd->prepare($sql);
        $statement->execute([
            'email' => $email
        ]);
        $req = $statement->fetch();

        return $req;
    }
    
    
}