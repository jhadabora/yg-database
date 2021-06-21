<?php

namespace App\Controller;

use App\Form\SubstanceFilterForm;
use Cake\Event\EventInterface;
use Cake\Http\Exception\NotFoundException;
use Cake\ORM\Query;
use Cake\ORM\TableRegistry;

class SubstancesController extends AppController {

    public function initialize() : void {
        $this->loadComponent('Paginator');
    }

    public function index() {
        //Load the filter form.
        $form = new SubstanceFilterForm();

        //Create the query that will find all the substances.
        $substances = $this->Substances->find()->contain('Regulations');

        //Filter the query by the EC number if specified.
        if ($ec = $this->request->getQuery('ec')) {
            $substances->andWhere(['ec LIKE CONCAT("%", :ec, "%")'])->bind(':ec', $ec, 'string'); //Using named parameter to avoid SQL injection.
        }
        //Filter the query by the CAS number if specified.
        if ($cas = $this->request->getQuery('cas')) {
            $substances->andWhere(['cas LIKE CONCAT("%", :cas, "%")'])->bind(':cas', $cas, 'string'); //Using named parameter to avoid SQL injection.
        }
        //Filter the query by the regulation ID if specified.
        if ($regulation = $this->request->getQuery('regulation')) {
            $substances->matching('Regulations', function(Query $q) use ($regulation) {
                return $q->andWhere(['Regulations.id' => (int)$regulation]); //Casting regulation ID to integer to avoid SQL injection.
            });
        }

        //Paginate the results and handle a 404 exception when the page is out of bounds.
        try {
            $substances = $this->Paginator->paginate($substances);
        } catch (NotFoundException $e) {
            //Redirect the user to the same page with the same filters but on page 1.
            $this->redirect(['controller' => 'substances', 'action' => 'index', '?' => array_replace($this->request->getQueryParams(), ['page' => 1])]);
        }

        //Set the parameters for the view page.
        $this->set([
            'substances' => $substances,
            'regulations' => TableRegistry::getTableLocator()->get('Regulations')->find('list')->all(),
            'form' => $form,
        ]);
    }

}
