<!DOCTYPE html>
<html>
<body>

<?php 
$array = ['template' => 'editjoke.html.php','title' => 'title',
'variables' => ['joke' => '123','joke2' => 'joke2']
];

extract($array);
echo $variables['joke'];
?>

</body>
</html>