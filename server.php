<?php
$file_name = __FILE__;
include_once __DIR__.'/conf.php';

$fp = fopen($log_file,'a+');


$rst = [];

$column = [
    'script_filename',
    'document_root',
    'document_uri',
    'request_time',
];

foreach($column as $k=>$v) {
    $rst[$v] = $_SERVER[strtoupper($v)]??'undefined';

}
fwrite($fp,output($rst));