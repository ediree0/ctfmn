## Description
Web · Харуул Занги U18: 2018 · w01f
Solved: 34 · Score: 439
http://139.162.5.230:10310/
Files:

index.php

## Solution 

```

<?php
require 'flag.php';
if (isset($_GET['too'])) {
if (is_numeric($_GET['too'])){
if (strlen($_GET['too']) < 4){
if ($_GET['too'] > 999)
die('Flag: '.$flag);
else
print '<p class="alert">Baga bna, Tom Bai</p>';
} else
print '<p class="alert">Tom bna, Baga bai</p>';
} else
print '<p class="alert">No Number, No Cry</p>';
}
?>

```

Has to be numberic, less than 4 digit and bigger than 999

entering 1e3 is same as entering 1000 in PHP i guess learned new shit :D