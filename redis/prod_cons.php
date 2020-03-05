<?php
$file_name = __FILE__;
include dirname(__DIR__).'/conf.php';
$redis = new Redis();
$is_connect = $redis->connect('127.0.0.1', 6379);
if ($is_connect) {
    echo "连接redis成功";
} else {
    echo "连接redis失败";
    exit();
}
$fp = fopen($log_file,'a+');
$rst = [];
while($item = $redis->rPop('tasklist')) {
    $rst[] = $item;
}
foreach($GLOBALS as $kk=>$vv) {
    $rst[$kk]=$vv;
}
fwrite($fp, output($rst));

// var_dump($GLOBALS);



