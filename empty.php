<?php

$arr = [
    new \SimpleXML,0,0.0,-0.0,'','0','0.0','-0.0',[],new \stdClass
];

foreach($arr as $v) {
    $rst[] = [$v,empty($v)?'y':'n',gettype($v)];
}

var_export($rst);