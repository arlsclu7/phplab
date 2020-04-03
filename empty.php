<?php
$b = 10;
$c =100;
$d= null;
$rst =  !($a??1)?:0;
$rst = isset($b)?'111':'noexist';
$rst = $d??'11';
/**
 * exp1??exp2 =>  ??中间无表达式  exp1 为isset时，输出exp1
 * exp1?[exp2]:exp3   使用empty判断exp1, 如果exp1为true，exp2为空时显示exp1的值（可能为boolean），exp2非空时显示exp2的值
 */
$e = '0.0';
$rst = $e?:'yyy';
var_dump( $rst);
exit();



$arr = [
    new \SimpleXML,0,0.0,-0.0,'','0','0.0','-0.0',[],new \stdClass
];

foreach($arr as $v) {
    $rst[] = [$v,empty($v)?'y':'n',gettype($v)];
}

var_export($rst);