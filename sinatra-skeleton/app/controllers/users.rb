get '/users/:user_id/surveys/new' do

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

post '/users/:user_id/surveys/new' do

end
