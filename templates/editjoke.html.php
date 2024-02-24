<form action="" method="post" class="form-container">
  <input type="hidden" name="joke[id]" value="<?=$joke['id'] ?? ''?>">
    <label for="joketext" cllass="form-label">Type your joke here:</label>
    <textarea id="joketext" name="joke[joketext]" rows="3" cols="40" class="form-field"><?=$joke['joketext'] ?? ''?></textarea>
    <input type="submit" name="submit" value="Save" class="form-button">
</form>

