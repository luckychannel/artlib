<?php

namespace Lucky\LibraryBundle\Controller;

use Lucky\LibraryBundle\Entity\Book;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{
    /**
     * @Route("/hello/{name}")
     * @Template()
     */
    public function indexAction($name)
    {
        return array('name' => $name);
    }


public function listAction($page)
{

		$limit = 10;

		$em = $this->getDoctrine()->getEntityManager();
		$qb = $em->createQueryBuilder();
		$qb->select('count(books.id)');
		$qb->from('LuckyLibraryBundle:Book','books');
		$total = $qb->getQuery()->getSingleScalarResult();

		$max_pages = intval(($total - 1) / $limit) + 1;
		if ($page > $max_pages) {
				$page = 1;
		}
		$offset = abs($limit * ($page - 1));

		$qb = $em->createQueryBuilder();
		$qb->select('b.id, b.title');
		$qb->from('LuckyLibraryBundle:Book','b');
		$qb->setFirstResult( $offset );
		$qb->setMaxResults( $limit );
		$data['books'] = $qb->getQuery()->getResult();

		if ($max_pages != $page) {
				$data['next'] = $page + 1;
		}

		if ($page != 1) {
				return $this->render('LuckyLibraryBundle:Book:page.html.twig', array('data' => $data));
		} else {
				return $this->render('LuckyLibraryBundle:Book:index.html.twig', array('data' => $data));
		}

}


public function infoAction($id)
{

		$book = $this->getDoctrine()
				->getRepository('LuckyLibraryBundle:Book')
				->find($id);

		if (!$book) {
				throw $this->createNotFoundException('No book found for id '.$id);
		}

    // делает что-нибудь, например передаёт объект $book в шаблон
		$info = $book->getDescription();
		return new Response($info);

}

}
