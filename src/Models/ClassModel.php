<?php

namespace Loukalemonnier\MDS\projet_doriane\Models;

use Exception;

/**
 * Modèle de classe
 */
class ClassModel
{

  //Le constructeur est privé, je ne peux plus faire de 'new' en dehors de la classe.
  private function __construct(
    public readonly string $name
  ) {}

  // Pattern 'factory method'. On doit passer par cette méthode pour instancier
  // un objet ClassModel. Ça permet de faire de la validation avant d'instancier l'objet
  // Ainsi, on peut vérifier qu'on instancie que des objets ClassModel valides (ici avec un nom).
  public static function create($name): ClassModel
  {
    if (empty($name))
      throw new Exception("Merci de fournir un nom");

    return new ClassModel($name);
  }
}
