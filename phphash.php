<?php

$str = $string = file_get_contents('hash.txt',TRUE);;

preg_match_all('/#([^\s]+)/', $str, $matches);

$hashtags = implode(',', $matches[1]);

var_dump($hashtags);






?>
