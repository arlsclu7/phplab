<?php
$fp = fopen('1.txt','r');
$rst = '';
while(!feof($fp)) {
    $line  = trim(fgets($fp));
    $rst .= "'$line',".PHP_EOL;
}
echo $rst;