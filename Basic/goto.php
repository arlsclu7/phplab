<?php

$i = 10;
LAB:
if ($i>0) {
    $i--;
    echo $i;
    goto LAB;
}


