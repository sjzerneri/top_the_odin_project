
$(document).ready(function(){
	
	/*--- Display information modal box ---*/
  	$(".what").click(function(){
    	$(".overlay").fadeIn(1000);

  	});

  	/*--- Hide information modal box ---*/
  	$("a.close").click(function(){
  		$(".overlay").fadeOut(1000);
  	});

  	/*-----------------------------------------------------*/

    //defining variables
    
    var guessCount = 0;
    var secretNum = 65; //Math.floor(Math.random() * 100) + 1;
    var oldGuess = 0;

  	//new game action
  	$('.new').click(function(){
  		newGame();
  	});

  	//guess button action
  	$('#guessButton').click(function(){
      var guessedNum = document.getElementById("userGuess").value;
      alert(secretNum + 'guess' + guessedNum);
      if (guessedNum === secretNum) {
        alert("Game over! You won. You can start a new game in the top right.");
      } else {
        validateInput(guessedNum); //validates input
        showCount(); //updates guess #
    		receieveInput(guessedNum); //records guess to footer section
        feedback(oldGuess,guessedNum);
        $('#userGuess').val(''); 
      };
      oldGuess = guessedNum;
  	});

  	//writing game functions
	function newGame(){
		secretNum = 65; //Math.floor(Math.random() * 100) + 1;
		guessCount = 0;
		$('#count').text(guessCount); 
    $('#guessList').text('');
    $('#feedback').text("Make your Guess!");
	}

	//counting function
	function showCount (){
		guessCount += 1;
		$('#count').text(guessCount);
	}

	//validating guess number between 1 - 100
  function validateInput(num){
    if (num > 100 || num < 1 ) {
      alert('Please enter a number 1-100.  Check out "HOW IT WORKS" in the top left if you don\'t know how to play the game!');
      return false; //this will stop the loop and not do anything else.
    } else if (num % 1 != 0) {
      alert('Please enter an integer 1-100, no decimals please. Check out "HOW IT WORKS" in the top left if you don\'t know how to play the game!');
      return false;
    } else if (num === oldGuess) {
      alert('You just used that number!!  Are you out of guesses? Check out "HOW IT WORKS" in the top left if you don\'t know how to play the game!');
      return false;
    } else if (num === secretNum){
      alert('You win!!  The game is over.  See if you can guess the number again in less tries.');
      return false;
    } else {
      return false;
    }
  }

	//receiving user input method
	function receieveInput(num){
		var userInput = num;
		//oldGuess = userInput;
		$('#guessList').append("<li>" + userInput + "</li>");
	}

  //tells user warm/cool/hot/cold
  function feedback(old, current) {
    var newDiff = Math.abs(secretNum - current);
    var oldDiff = Math.abs(secretNum - old);
    if (oldDiff < newDiff) {
      $('#feedback').text("You're getting cooler");
    } else if (oldDiff > newDiff) {
      $('#feedback').text("You're getting warmer");
    } else {
      $('#feedback').text("You win!!! Game over.");
    }
  }

});




