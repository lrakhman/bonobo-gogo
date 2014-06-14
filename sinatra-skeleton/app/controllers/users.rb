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

