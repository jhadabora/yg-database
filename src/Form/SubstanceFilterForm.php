<?php

namespace App\Form;

use Cake\Form\Form;
use Cake\Form\Schema;
use Cake\Validation\Validator;

class SubstanceFilterForm extends Form {

    protected function _buildSchema(Schema $schema): Schema {
        return $schema
            ->addField('ec', ['type' => 'string'])
            ->addField('cas', ['type' => 'string'])
            ->addField('regulation', ['type' => 'integer']);
    }

    public function validationDefault(Validator $validator): Validator {
        return $validator;
    }

}
