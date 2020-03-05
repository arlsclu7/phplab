<?php

$redis = new Redis();
$redis->connect('127.0.0.1',6379);
$redis->subscribe(['chat'],'callback');

function callback($instance, $channel, $msg)
{

    // echo $channel, "==>", $msg, PHP_EOL;
         
    //$instance,即为上面创建的redis实例对象，在回调函数中，默认的这个参数就是，因此不需专门传参。 这里除了SUBSCRIBE、PSUBSCRIBE、UNSUBSCRIBE、PUNSUBSCRIBE这4条命令之外其它命令都不能使用
    //如果要使用redis中的其他命令，这样实现
//     $newredis = new Redis();
//    $newredis->connect("127.0.0.1", 6379);
//    echo $newredis->get('test') . PHP_EOL;
//    $newredis->close();
   
     //可以根据$channelName, $message，处理不同的业务逻辑
     echo date('Ymd H:i:s'),PHP_EOL,$channel,'====',$msg,PHP_EOL;

}


$args = [1,2];
unset($args[0]);
echo $args;