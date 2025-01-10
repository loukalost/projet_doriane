<?php

namespace Loukalemonnier\MDS\projet_doriane\Controllers;

// À utiliser plus tard pour implémenter la page avec le modèle 👇
use Loukalemonnier\MDS\projet_doriane\Views\TeacherCalendar;

/**
 * Contrôleur en charge des ressources liées aux articles
 * Chef d'orchestre : mobilise le code métier, 
 * mobilise la vue pour présenter les résultats au client
 */
class TeacherCalendarController
{

  public function __construct(
    readonly array $args
  ) {}

  public function execute()
  {
    $view = new TeacherCalendar();
    $content = $view->render();
    echo $content;
  }
}
