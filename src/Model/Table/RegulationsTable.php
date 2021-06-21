<?php

namespace App\Model\Table;

use Cake\ORM\Table;

class RegulationsTable extends Table {

    public function initialize(array $config) : void {
        $this->belongsToMany('Substances', ['through' => 'SubstanceRegulations']);
    }

}
