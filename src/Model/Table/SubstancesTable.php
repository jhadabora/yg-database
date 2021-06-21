<?php

namespace App\Model\Table;

use Cake\ORM\Table;

class SubstancesTable extends Table {

    public function initialize(array $config) : void {
        $this->belongsToMany('Regulations', ['through' => 'SubstanceRegulations']);
    }

}
