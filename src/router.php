<?php

namespace Loukalemonnier\MDS\projet_doriane;

use Exception;

/**
 * Le routeur de l'application, associe un controller à chaque endpoint
 * et d'invoquer le controller
 */
class Router
{

  //Déclaration l'association entre endpoints et les controleurs
  //On range les ressources par méthode http
  public const ROUTES = [
    'GET' => [
      '/' => 'Loukalemonnier\\MDS\\projet_doriane\\Controllers\\HomeController',
      '/classes' => 'Loukalemonnier\\MDS\\projet_doriane\\Controllers\\ClassCalendarController',
      '/teachers' => 'Loukalemonnier\\MDS\\projet_doriane\\Controllers\\TeacherCalendarController',
    ],
    'POST' => []
  ];

  /**
   * Retourne la classe du contrôleur associée à la requête
   * @throws Exception Si aucun contrôleur n'est trouvé
   */
  public function getController()
  {
    // Récupérer l'URL demandée et la méthode HTTP
    $parts = parse_url($_SERVER['REQUEST_URI']);

    // Initialiser $args à un tableau vide
    $args = [];

    // Si la clé 'query' existe, la traiter
    if (isset($parts['query'])) {
      parse_str($parts['query'], $args);
    }

    // Vérifier que l'endpoint existe dans les ROUTES déclarées par l'application
    $resource = $parts['path'];
    $httpMethod = $_SERVER['REQUEST_METHOD'];

    $isRoute = isset(self::ROUTES[$httpMethod][$resource]);

    if (!$isRoute) {
      throw new Exception("La ressource demandée n'existe pas");
    }

    $controllerName = self::ROUTES[$httpMethod][$resource];

    // Vérifier si la classe du contrôleur existe
    if (!class_exists($controllerName)) {
      throw new Exception("Le contrôleur n'existe pas");
    }

    // Instancier le contrôleur et lui passer les arguments de la requête
    $controller = new $controllerName($args);

    return $controller;
  }


  public function __construct() {}
}
