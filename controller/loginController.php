<?php
session_start();

require_once('../model/data.php');

$bdd = new Data();

$email=$_POST["email"];
$password=$_POST["password"];

$userData = $bdd->authentication($email);

if(!$userData) {
    $message = "Cette adresse email n'est pas reconnue";
} else if ($password !== $userData["password"]) {
    $message = "mauvais mot de passe";
} else {
    $message = "Connexion réussie";
    $_SESSION['userId'] = $userData["id"];
}

header("location: ../index.php?message=$message");
