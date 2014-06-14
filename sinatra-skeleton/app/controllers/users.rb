get '/users/:user_id/surveys/new' do
  if session[:user_id]
    erb :new_survey
        #puts params[:json_form]
  else
    redirect "/"
  end
   redirect "/"
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

