get '/' do
  @surveys = Survey.all
  if session[:user_id]
    erb :index
  else
    erb :index, layout: :login_layout
  end
end

get '/logout' do
  session[:user_id] = nil
  erb :logout
end

post '/login' do
 user = User.authenticate(params[:username], params[:password])
 logger.info "wheretf am I"
 logger.info user
  if user
    session[:user_id] = user.id
    logger.info "I'm here right now."
    redirect '/'
  else
    redirect '/'
  end
end

