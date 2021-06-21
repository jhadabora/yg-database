<?php

namespace App\Model\Entity;

use Cake\ORM\Entity;

class Regulation extends Entity {

    protected $_accessible = [
        '*' => false,
        'id' => true,
        'name' => true,
    ];

}
