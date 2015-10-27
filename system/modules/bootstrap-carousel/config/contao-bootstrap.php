<?php

/**
 * @package    contao-bootstrap
 * @author     David Molineus <david.molineus@netzmacht.de>
 * @copyright  2014-2015 netzmacht creative David Molineus
 * @license    LGPL 3.0
 * @filesource
 *
 */

return array(
    'wrappers' => array(
        'carousel' => array(
            'start' => array(
                'name'           => 'bootstrap_carouselStart',
                'auto-create'    => true,
                'trigger-create' => true,
                'trigger-delete' => true,
            ),

            'separator' => array(
                'name'           => 'bootstrap_carouselPart',
                'trigger-create' => false,
                'auto-delete'    => true,

            ),

            'stop' => array(
                'name'           => 'bootstrap_carouselEnd',
                'auto-create'    => true,
                'auto-delete'    => true,
            ),
        ),
    ),
);
