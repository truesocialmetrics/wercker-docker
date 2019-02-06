<?php
var_dump($_ENV);
var_dump($_SERVER['argv']);


echo base64_encode(file_get_contents(__DIR__ . '/test.php')) . PHP_EOL;
echo base64_encode('script.php') . PHP_EOL;
echo base64_encode('php script.php') . PHP_EOL;

