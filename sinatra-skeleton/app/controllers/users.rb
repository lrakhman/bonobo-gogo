get '/users/:user_id/surveys/new' do
  if session[:user_id]
    erb :new_survey
        #puts params[:json_form]
  else
    redirect "/"
  end
end

get '/users/:user_id' do
  @user = User.find(params[:user_id])

  # @user.survey_responses.each do |survey_response|
  #   @survey_response
  # end

  erb :profile

end

post '/users' do
  @user = User.new(username: params[:username], password: params[:password])
  if @user.valid?
    @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :index
  end
end

post '/users/:user_id/surveys/new' do
  if session[:user_id]
    questions = JSON.parse(params[:json_form])

    survey = Survey.create(title: params[:title] , description: params[:description], survey_creator_id: session[:user_id])
    questions.each do |question|
      question_obj = Question.create(survey_id: survey.id, text: question['text'])
      #puts question["choices"].length
      question["choices"].each do |choice|
        Choice.create(question_id: question_obj.id, text: choice)
      end
    end
    redirect "/"

  else
    redirect "/"
  end
end

post '/users/:user_id' do
# params['uploaded_photo'][:filename]

 # File.open("uploads/" + "#{params[:user_id]}" do |f|
 #    f.write(params['uploaded_photo'][:tempfile].read)
 #    puts(params['uploaded_photo'])
 #  end

 #redirect "/users/#{params[:user_id]}"
end
