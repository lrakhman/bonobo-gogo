get '/users/:user_id/surveys/new' do
  if session[:user_id]
    erb :new_survey
  else
    redirect "/"
  end
end

get '/users/:user_id' do

end

post '/users/new' do

end

post '/users/:user_id/surveys/new' do
  if session[:user_id]
    #puts params[:json_form]


    redirect "/"
  else
    redirect "/"
  end
end
