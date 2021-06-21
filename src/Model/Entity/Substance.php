<?php

namespace App\Model\Entity;

use Cake\ORM\Entity;

class Substance extends Entity {

    protected $_accessible = [
        '*' => false,
        'id' => true,
        'ec' => true,
        'cas' => true,
        'name' => true,
    ];

}
