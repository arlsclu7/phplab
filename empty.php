<?php

#### That means empty() is essentially the concise equivalent to !isset($var) || $var == false.
// When converting to boolean, the following values are considered FALSE:
// the boolean FALSE itself
// the integers 0 and -0 (zero)
// the floats 0.0 and -0.0 (zero)
// the empty string, and the string "0"
// an array with zero elements
// the special type NULL (including unset variables)
// SimpleXML objects created from empty tags
$arr = [

    ##integer
    0,
    1,
    -0,
    ##float
    0.0,
    -0.0,
    0.000,


    ##boolean
    true,
    false,
    ##string
    '',
    '0',
    '-0.0',
    '0.0000',

    ##array
    array(),
    ##object
    new \stdClass(),


    ##Null
    null,


];
/**
 * [integer, 0
 * float]  0.0 0.00  -0.0
 * 
 * [boolean, 
 * string] '','0','0.00',' '
 * 
 * [array,  
 *  object]
 * 
 * [null,
 * resource]
 * 
 * 
 * 
 */
if(  !0 &&
     !-0 && 
     !0.0 && 
     !-0.0 &&
     !'' &&
     !'0'
     ) {
    echo "都是false";
}
$arr = array_combine(range('a','o'),$arr);
$true = [];
$false = [];
$empty = [];
$not_empty = [];
foreach($arr as $k=>$v) {
    if($v) {
        $true[] = [$k=>$v];
    } else {
        $false[] = [$k=>$v];
    }
    if(empty($v)) {
        $empty[] = [$k=>$v];
    } else {
        $not_empty[] = [$k=>$v];
    }
}
if(!-0.0) {
    echo '0.0 为false';
}
if (!-0) {
    echo '\'0\' 为false';
}
if (!'0.0') {
    echo '\'0.0\' 为false';
}

// var_dump($true);
// var_dump($false);
// var_dump($empty);
// var_dump($not_empty);

