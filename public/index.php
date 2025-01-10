<?php

// Inclure l'autoloader de Composer
require_once __DIR__ . '/../vendor/autoload.php';

use Loukalemonnier\MDS\projet_doriane\Router;

//Définir un gestionnaire global d'exception
set_exception_handler(function (Throwable $e) {
  //Fails gracefull
  http_response_code(500);
  echo "Oups.";
});

try {
  // Instancier le routeur
  $router = new Router();

  // Obtenir le contrôleur pour la requête
  $controller = $router->getController();

  // Appeler une méthode du contrôleur (exemple: handle ou execute)
  $controller->execute();
} catch (Exception $e) {
  // Gérer les erreurs (vous pouvez personnaliser cette partie)
  http_response_code(500);
  echo "Erreur : " . $e->getMessage();
}
