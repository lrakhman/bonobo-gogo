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
  erb :index, layout: :login_layout
end

post '/login' do
 user = User.authenticate(params[:username], params[:password])
  if user
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/'
  end
end

