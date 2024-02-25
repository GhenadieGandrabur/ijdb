<?php
namespace Ijdb;

class JokeWebsite
{
    public function getDefaultRoute()
    {
        return 'joke/home';
    }

    public function getController(string $controllerName)
    {
        $pdo = new \PDO('mysql:host=localhost;dbname=ijdb;charset=utf8mb4', 'root', '');

        $jokesTable = new \Ninja\DatabaseTable($pdo, 'joke', 'id');
        $authorsTable = new \Ninja\DatabaseTable($pdo, 'author', 'id');

        if ($controllerName === 'joke') {
            $controller = new \Ijdb\Controllers\Joke($jokesTable, $authorsTable);
        } else if ($controllerName === 'register') {
            $controller = new \Ijdb\Controllers\Register($authorsTable);
        }

        return $controller;
    }
}
