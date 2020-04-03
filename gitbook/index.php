<?php
$num = 0;
isset($argv[1]) && ($num = (int) trim($argv[1]));
$stars = str_repeat('↳', $num);
$fp = fopen('swagger.txt', 'r');
$rst = '';
while (!feof($fp)) {
    $line = fgets($fp);
    if (!stripos($line, '@OA\Property')) {
        continue;
    }
    preg_match("/property=\"(\w+)\"/i", $line, $match1);
    preg_match("/type=\"(\w+)\"/i", $line, $match2);
    preg_match("/description=\"([^\"]+)\"/u", $line, $match3);
    $rst .= $stars
        . ($match1[1] ?? '@@@')
        . '|'
        . ($match2[1] ?? '@@@')
        . '|'
        . '是'
        . '|'
        . ($match3[1] ?? '@@@')
        . PHP_EOL;
}

echo $rst;
