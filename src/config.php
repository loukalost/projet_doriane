<?php
// config.php

// Paramètres de connexion
$host = 'localhost'; // ou l'adresse de votre serveur MySQL
$db   = 'projetDoriane';
$user = 'root';
$pass = ''; // Remplacez par votre mot de passe si nécessaire
$charset = 'utf8mb4';

// DSN (Data Source Name)
$dsn = "mysql:host=$host;dbname=$db;charset=$charset";

// Options pour PDO
$options = [
  PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION, // Affiche les erreurs sous forme d'exceptions
  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,       // Mode de récupération des données
  PDO::ATTR_EMULATE_PREPARES   => false,                  // Désactive l'émulation des requêtes préparées
];

try {
  // Création de l'instance PDO
  $pdo = new PDO($dsn, $user, $pass, $options);
  // Vous pouvez ajouter un message de succès si vous le souhaitez
  // echo "Connexion réussie à la base de données.";
} catch (PDOException $e) {
  // Gestion des erreurs de connexion
  throw new PDOException($e->getMessage(), (int)$e->getCode());
}
