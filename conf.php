<?php
ini_set('date.timezone','Asia/Shanghai');
$log_file = __DIR__.'/logs/'.basename($file_name,'.php').'.output';
function output(array $content)
{
    $rst = '';
    $rst .=date('Y-m-d H:i:s').PHP_EOL; 
    $rst .=json_encode($content,JSON_PRETTY_PRINT|JSON_UNESCAPED_SLASHES,2);
    $rst .=PHP_EOL;
    return $rst;
}