<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Attribute\Route;
use Doctrine\DBAL\Connection;
use Symfony\Component\HttpFoundation\Response;

class TodoController extends AbstractController
{
    #[Route('/api/todos', name: 'get_todos', methods: ['GET'])]
    public function getTodos(Connection $connection): JsonResponse
    {
        $todos = $connection->fetchAllAssociative('SELECT * FROM todo');
        return $this->json($todos);
    }

    #[Route('/api', name: 'show_todos', methods: ['GET'])]
    public function showTodos(Connection $connection): Response
    {
        $todos = $connection->fetchAllAssociative('SELECT * FROM todo');
        
        return $this->render('todo/index.html.twig', [
            'todos' => $todos
        ]);
    }
}