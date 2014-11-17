<?php

$json = file_get_contents('hash.txt',0,null,null);
foreach (json_decode($json, true) as $item) {
    echo $item['title'], "\n";
}




?>
