<?php




class A
{
    public $name  = 'Tom';
    public $sex = 'M';
    protected $like = 'pingpong';
    private $age = 18;
    public function f1()
    { }
    protected function f2()
    { }
    private function f3()
    { }
}

$a = new A;
var_dump($a);
$a = (array) $a;

var_dump($a);