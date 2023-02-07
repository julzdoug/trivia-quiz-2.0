<?php
include "includes/data-collector.php";
?>
<form id="quiz" action="question.php" method="post">
  <div class="align-items form-outline d-inline">
    <label for="quiz-topic" class="form-label">Quiz choose topic</label>
    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="topic" name="topic">
    <option value="ANIMALS">Animals</option> 
     <option value="music">Music</option>
      <option value="ch-norris">Chuck Norris</option>
      <option value="movies">Movies</option>
      <option value="d-n-d">Dungeons-n-Dragons</option>
      <option value="astronautics">Astronautics</option>
      <option value="technology">Technology</option>
      <option value="ai">Artificial Intelligence</option>
      <option value="geography">Geography</option>
      <option value="sports">Sports</option>
      <option value="science">Science</option>
      <option value="informatics">Informatics</option>
      <option value="gen-knowledge">General Knowledge</option>
    </select>
    <br>
    <label class="form-label" for="questionNum">How many question choose between (5-40)</label>
    <input type="number" for="questionNum" class="form-control" id="questionNum" name="questionNum" min="1" max="30"
      value="1" />
    <input type="hidden" id="lastQuestionIndex" name="lastQuestionIndex" value="-1">
    <input type="hidden" id="indexStep" name="indexStep" value="1">
    <br>
    <button class="btn btn-outline-dark btn-rounded d-inline" data-mdb-ripple-color="dark" type="submit" value="Start">
      next
    </button>
  </div>
</form>