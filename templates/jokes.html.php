<p><?=$totalJokes?> jokes have been submitted to the Internet Joke Database.</p>

<?php foreach($jokes as $joke): ?>

<blockquote>
  <p>
 
  <?=htmlspecialchars($joke['joketext'], ENT_QUOTES, 'UTF-8')?>

  <samp style="font-size:12px;">
  (by <a href="mailto:<?php
    echo htmlspecialchars($joke['email'], ENT_QUOTES,
    'UTF-8'); ?>">
    <?php echo htmlspecialchars($joke['name'], ENT_QUOTES,'UTF-8'); ?></a>  on 
    <?php $date = new DateTime($joke['jokedate']); echo $date->format('d F Y');?>)
    
<a href="/joke/edit/<?=$joke['id']?>">Edit</a>
</samp>
<br>
<form action="index.php?action=delete" method="post">
    <input type="hidden" name="id" value="<?=$joke['id']?>">
    <input type="submit" value="Delete">
</form>
</p>
</blockquote>
<?php endforeach; ?>
