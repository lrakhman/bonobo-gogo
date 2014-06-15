User.create(username: "zac", password: "cake")
User.create(username: "lana", password: "notcake")

Survey.create(survey_creator_id: 1, title: "First Best Survey", description: "this is the best survey about monkeys i think")
Survey.create(survey_creator_id: 2, title: "Second Best Survey", description: "blahblahblahblahblahblahblahblahblahblahb")

Question.create(text: "what's your favorite color", survey_id: 1)
Choice.create(question_id: 1, text: "green")
Choice.create(question_id: 1, text: "a stupid color")

Question.create(text: "what's not your favorite monkey", survey_id: 1)
Choice.create(question_id: 2, text: "bonobo")
Choice.create(question_id: 2, text: "pink butted baboon")
Choice.create(question_id: 2, text: "gibbon")

SurveyResponse.create(survey_id: 1, user_id:1, completed: true)

QuestionResponse.create(choice_id: 1, survey_response_id: 1)
QuestionResponse.create(choice_id: 3, survey_response_id: 1)

SurveyResponse.create(survey_id: 1, user_id:2, completed: true)

QuestionResponse.create(choice_id: 2, survey_response_id: 2)
QuestionResponse.create(choice_id: 5, survey_response_id: 2)
