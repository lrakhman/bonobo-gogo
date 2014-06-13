var questions = [];



$(document).ready(function() {
  document.getElementById( 'add_choice_form' ).style.display = 'none';


  $("#add_choice_form").on('submit', function(event){ event.preventDefault();
     console.log("adding a choice" + $(this)[0][0].value);
     questions[questions.length - 1].push(new Choice($(this)[0][0].value));

    // choice_form = document.createElement("form");
    // document.getElementById('').appendChild(choice_form);
  });


  $("#add_question_form").on('submit', function(event){ event.preventDefault();
    console.log($(this)[0][0].value);
    questions.push(new Question($(this)[0][0].value));
    //document.getElementById("question_heading").value = $(this)[0][0].value;


    choice_form = document.createElement("form");
    //document.getElementById('').appendChild(choice_form);
    $('#add_question_form').fadeOut(500);
    sleep(500, function(){$('#add_choice_form').fadeIn(400);});

    //$('#add_choice_form').fadeOut(400);
    // document.getElementById('add_question_form').style.disabled = true;
     //document.getElementById( 'add_choice_form' ).style.display = '';



  });
});


function Choice(text){
  this.text = text;
  console.log("value of this in choice is " + this);
  //Choice.add_to_question = function(){ question.choices.push(this); };
}



function Question(text){
  this.text = text;
  this.choices = [];
  //Question.prototype.add_choice = function(new_choice){ this.choices.push(new_choice); };

}



function sleep(millis, callback) {
  setTimeout(function()
    { callback(); }
    , millis);
  }

