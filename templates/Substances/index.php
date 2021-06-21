<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Substance[] $substances
 * @var \App\Model\Entity\Regulation[] $regulations
 * @var \App\Form\SubstanceFilterForm $form
 */
?>

<h1 class="mt-4">Filters</h1>
<?php
    echo $this->Form->create($form, [
        'action' => '/substances',
        'method' => 'get',
        'valueSources' => ['query'],
        'templates' => [
            'inputContainer' => '<div class="input {{type}}{{required}} mb-3">{{content}}</div>',
            'input' => '<input class="form-control" type="{{type}}" name="{{name}}"{{attrs}}/>',
        ]
    ]);
    echo $this->Form->control('ec', ['label' => 'EC Number']);
    echo $this->Form->control('cas', ['label' => 'CAS Number']);
    echo $this->Form->control('regulation', ['label' => 'Regulation', 'required' => false, 'options' => $regulations, 'empty' => 'All', 'class' => 'form-control']);
    echo $this->Form->button('Submit', ['class' => 'btn btn-primary']);
    echo $this->Form->end();
?>

<h1 class="mt-4">Substances</h1>
<?php
echo $this->Paginator->first();
echo $this->Paginator->prev();
echo $this->Paginator->next();
echo $this->Paginator->last();

echo 'Page ' . $this->Paginator->counter();
?>
<table class="table">
    <tr>
        <th scope="col">Substance ID</th>
        <th scope="col">EC Number</th>
        <th scope="col">CAS Number</th>
        <th scope="col">Substance Name</th>
        <th scope="col">Regulations</th>
    </tr>
    <?php foreach ($substances as $substance): ?>
        <tr>
            <th scope="row"><?= $substance->id ?></th>
            <td><?= $substance->ec ?></td>
            <td><?= $substance->cas ?></td>
            <td><?= $substance->name ?></td>
            <td><ul>
            <?php foreach ($substance->regulations as $regulation): ?>
                <li><?= $regulation->name ?></li>
            <?php endforeach ?>
            </ul></td>
        </tr>
    <?php endforeach ?>
</table>
