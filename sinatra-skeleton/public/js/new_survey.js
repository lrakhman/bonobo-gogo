var questions = [];



$(document).ready(function() {
  document.getElementById( 'add_choice_form' ).style.display = 'none';
  document.getElementById("padding_div").style.height="500px";
  //$('#add_question_div').center();


  $("#add_choice_form").on('submit', function(event){ event.preventDefault();
     choice = $(this)[0][0];
     console.log("adding a choice" + choice.value);
     questions[questions.length - 1].choices.push(choice.value);
     var choice_li = $("<li>" + (choice.value) + "</li>");
     $("#questions_list li:last-child ul ").append(choice_li);
     choice.value = "";
     $('html, body').animate({scrollTop: $(document).height()}, 'slow');
     $("#json_object").val(JSON.stringify(questions));
     console.log($("#json_object").val());
  });


  $("#add_question_form").on('submit', function(event){ event.preventDefault();
    var q_value = $(this)[0][0].value;
    console.log(q_value);
    questions.push(new Question(q_value));

    $('#add_question_form').fadeOut(100);
    sleep(100, function(){
      $('#add_choice_form').fadeIn(100);
      //$('#add_question_div').center();

      h2_tag = document.createElement("h2");
      q_li= document.createElement("li");
      h2_tag.innerHTML = q_value;
      q_li.appendChild(h2_tag);
      document.getElementById( 'questions_list' ).appendChild(q_li);
      choice_ul = document.createElement("ul");
      q_li.appendChild(choice_ul);


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
  //Question.prototype.add_choice = function(new_choice){ this.choices.push(new_choice); };

}


function sleep(millis, callback) {
  setTimeout(function()
    { callback(); }
    , millis);
  }

// jQuery.fn.center = function () {
//     this.css("position","absolute");
//     this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) +
//                                                 $(window).scrollTop()) + "px");
//     this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) +
//                                                 $(window).scrollLeft()) + "px");
//     return this;
// }
