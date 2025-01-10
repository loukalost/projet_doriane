<?php

namespace Loukalemonnier\MDS\projet_doriane\Controllers;

use Loukalemonnier\MDS\projet_doriane\Views\Home;

/**
 * Contrôleur en charge des ressources liées aux articles
 * Chef d'orchestre : mobilise le code métier, 
 * mobilise la vue pour présenter les résultats au client
 */
class HomeController
{

  public function __construct(
    readonly array $args
  ) {}

  public function execute()
  {
    $view = new Home();
    $content = $view->render();
    echo $content;
  }
}
