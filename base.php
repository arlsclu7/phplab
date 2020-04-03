<?php

$sample = [
    1,
    0,
    0.0,
    2.1,
    '0',
    'abc',
    true,
    false,
    [],
    range(3,6),
    // new \stdClass,
    null,
    // function(){return 'this is function';}
];

foreach($sample as $v) {
    $rst['string operation'][] = [$v=>(string)$v]; 
    $rst['int operation'][] = [$v=>(int)$v]; 
    $rst['float operation'][] = [$v=>(float)$v]; 
    $rst['bool operation'][] = [$v=>(bool)$v]; 
    $rst['object operation'][] = [$v=>(object)$v]; 
    $rst['array operation'][] = [$v=>(array)$v]; 
}
$rst[] = 

file_put_contents('./base.json',json_encode($rst,JSON_FORCE_OBJECT));

