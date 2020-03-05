<?php
$redis = new Redis();
$redis->connect('127.0.0.1');
$redis->set('s1','hello world');
echo $redis->get('s1');

$nrange = range(1,20);
foreach($nrange as $v) {
    $redis->rPush('l1',$v);
}
while ($vv = $redis->lPop('l1'))
 {
    // echo $vv;
}
echo PHP_EOL;
$redis->setBit('bs1',9,1);
$redis->setBit('bs1',4,1);
rsort($nrange);
$sum = 0;
foreach($nrange as $v) {
    $vv = $redis->getBit('bs1',$v);
    if($vv==1) {
        $sum += pow(2,$v-1);
    }
}
echo $sum;

