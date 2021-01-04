<?php 
$mongo = new MongoDB\Driver\Manager("mongodb://$_ENV[MONGO_USERNAME]:$_ENV[MONGO_PASSWORD]@$_ENV[MONGO_HOST]:27017"); 
?>

<ul>
  <li>
    <a href="http://localhost:81">mongo-admin-ui</a>
  </li>
</ul>

<h1>Users</h1>
<?php
$users = $mongo->executeQuery('admin.system.users', new MongoDB\Driver\Query([]));

foreach ($users as $user) {
  $u = (array)$user;
?>
  <pre><?= $u['_id'] ?></pre>
<?php
}
?>

