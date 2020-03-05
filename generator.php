<?php

function gen()
{
   echo 'print start';
   foreach(range(1,3) as $v) {
       $str = yield;
       echo $str . PHP_EOL;
   }
   return 'gen end';
}
function gen2()
{
   yield 1;
   echo 100;
   yield 2;
   yield 3;
   echo 200;
   yield 4;
   yield 5;
   yield 6;
}

$gen2 = gen2();

var_dump(iterator_to_array($gen2));
exit();
foreach($gen2 as $v) {
    echo $v;
    echo PHP_EOL,'***',PHP_EOL;
}



exit();
$gen = gen();
$gen->send(5);
echo PHP_EOL,'***',PHP_EOL;
$gen->send(6);
// foreach($gen as $v) {
//     echo $v;PHP_EOL;
// }
// echo $gen->getReturn();
//current 




