var questions = [];

$(document).ready(function() {
  document.getElementById( 'add_choice_form' ).style.display = 'none';
  document.getElementById("padding_div").style.height="500px";

  $("#add_choice_form").on('submit', function(event){ event.preventDefault();
     choice = $(this)[0][0];
     questions[questions.length - 1].choices.push(choice.value);
     var choice_li = $("<li>" + (choice.value) + "</li>");
     $("#questions_list li:last-child ul ").append(choice_li);
     choice.value = "";
     $('html, body').animate({scrollTop: $(document).height()}, 'slow');
     $("#json_object").val(JSON.stringify(questions));
     $("#title").val($("#title_text").val());
     $("#description").val($("#description_text").val());
  });


  $("#add_question_form").on('submit', function(event){ event.preventDefault();
    var q_value = $(this)[0][0].value;
    questions.push(new Question(q_value));
    $(this)[0][0].value = "";

    $('#add_question_form').fadeOut(100);
    sleep(100, function(){
      $('#add_choice_form').fadeIn(100);

      h2_tag = document.createElement("h2");
      q_li= document.createElement("li");
      h2_tag.innerHTML = q_value;
      q_li.appendChild(h2_tag);
      document.getElementById( 'questions_list' ).appendChild(q_li);
      choice_ul = document.createElement("ul");
      q_li.appendChild(choice_ul);
      $('html, body').animate({scrollTop: $(document).height()}, 'slow');

    });
  });

 $("#add_another_question").click(function(event){ event.preventDefault();

    $('#add_choice_form').fadeOut(100);
    sleep(100, function(){
      $('#add_question_form').fadeIn(100);
    });
  });
});


function Question(text){
  this.text = text;
  this.choices = [];

}

function sleep(millis, callback) {
  setTimeout(function()
    { callback(); }
    , millis);
  }
