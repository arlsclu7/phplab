<?php


echo '开始创建进程',PHP_EOL;
for($i=1;$i<=5;$i++) {
    $pid = pcntl_fork();//从这一行开始，父进程和子进程同时执行
}


$resource = range(1,200);
switch($pid) {
    case -1:
        die('fork failure');
    break;
    case 0:   //说明是子进程的
        echo 'from child',posix_getpid(),PHP_EOL;
        echo 'child处理了',json_encode(array_slice($resource,10,10));
        echo PHP_EOL;
    break;
    default:
        pcntl_wait($status);
        echo 'from parent',posix_getpid(),PHP_EOL;
        echo 'parent处理了',json_encode(array_slice($resource,0,10));
        echo   PHP_EOL;
    break;
}
// $curPid = posix_getpid();
// echo PHP_EOL,'....',PHP_EOL;
// echo date('H:i:s') . $pName .':(PID:' . $curPid . ')' . $child . PHP_EOL;
// echo date('H:i:s') . $pName .'(PID:' . $curPid .')结束' . PHP_EOL;