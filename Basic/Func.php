<?php

function f1(...$args)
{   
    return [
        'num_of_args'=>func_num_args(),
        'first_num_of_args' => func_get_arg(0),
        'args'=>func_get_args(),
        'args_array'=>$args,
        'compare'=>func_get_args()===$args
    ];
}
function f2($a, $b, $c) {
    return [
        'args'=>func_get_args(),
        'args_array'=>[$a, $b ,$c],
        'compare'=>func_get_args()===[$a, $b, $c]
    ];
}
function f3(...$args)
{
    return $args[0].$args[1].$args[2];
}

$rst = [
    //'methods' => $ref->getMethods(),
    //'funcs' => f1(range(1,2),range('a','d')),
    //'f2funcs' => f2(range(1,2),range(2,3),range(3,4)),
    'f3funcs' => f3(1,2,3)
];
var_dump($rst);
