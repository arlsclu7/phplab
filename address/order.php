<?php
$fp = fopen('1.txt','r');
$rst = 'order by '.PHP_EOL;
$i = 1;
while(!feof($fp)) {
    $line  = trim(fgets($fp));
    $rst .= "case when city_name='$line'"."then ".$i++.' end desc,'.PHP_EOL;
}
echo $rst;
