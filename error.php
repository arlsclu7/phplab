<?php
try {
    // intdiv(10,0);
    trigger_error('usererrmsg',E_USER_NOTICE);
} catch (Throwable $t) {
    echo get_class($t);
}
#


