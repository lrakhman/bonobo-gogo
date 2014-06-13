get 'surveys/:survey_id/stats' do

end

get 'surveys/:survey_id' do
  if session[:user_id]
    @survey = Survey.find(params[:survey_id])
    erb :surveys
  else
    redirect "/"
  end
end

post 'surveys/:survey_id' do

end
