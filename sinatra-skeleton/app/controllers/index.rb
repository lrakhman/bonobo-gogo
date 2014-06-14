get '/' do
  @surveys = Survey.all
  erb :index
end

get '/logout' do
  session[:user_id] = nil
  erb :index
end

post '/login' do
 @user = User.authenticate(params[:username], params[:password])
 logger.info "wheretf am I"
 logger.info @user
  if @user
    session[:user_id] = @user.id
    logger.info "I'm here right now."
    redirect '/'
  else
    @user = User.new(username: params[:username])
    erb :index
  end
end
