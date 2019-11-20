<?php
$file_basic = [
    'root'=>dirname(__FILE__),
    'dir0'=>dir(__DIR__),
];
while ($dir1_name = $file_basic['dir0']->read())  {
   if(in_array($dir1_name,['.','..'])) {
       continue;
   }
   if(is_dir($dir1_name)&& ($dir1 = dir($dir1_name))) {
      while($php_file = $dir1->read()) {
          $required[] = getcwd().$php_file;
          //require getpwd().$php_file.'.php';
      }
   }
}
var_dump($required);
exit();

/**
 * scanDir
 *
 * @param  mixed $dirname
 *
 * @return array
 */
function myScanDir($dirname='')
{
    $rst = [];
    $dir = dir($dirname);
    while ($file = $dir->read()) {
        if(in_array($file,['.','..'])) {
            continue;
        }
        $files[$dirname] = $file;
    }
    return $rst = $files;
}

