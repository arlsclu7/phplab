<?php
$b = 10;
$c =100;
$d= null;
$rst =  !($a??1)?:0;
$rst = isset($b)?'111':'noexist';
$rst = $d??'11';
/**
 * exp??exp2 =>  isset($ext)  true  $ext  exp2 ..
 * func(ext)?:    如果ext为true，那么   func(ext).?:之间有值则为该值
 */

var_dump( $rst);
exit();



$arr = [
    new \SimpleXML,0,0.0,-0.0,'','0','0.0','-0.0',[],new \stdClass
];

foreach($arr as $v) {
    $rst[] = [$v,empty($v)?'y':'n',gettype($v)];
}

var_export($rst);