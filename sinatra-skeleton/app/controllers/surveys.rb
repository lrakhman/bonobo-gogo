
get '/surveys/:survey_id/stats' do
	@survey = Survey.find(params[:survey_id])
 erb :stats
end

get '/surveys/:survey_id' do
	if session[:user_id]
		@survey = Survey.find(params[:survey_id])
		erb :survey
	else
		redirect '/'
	end
end

post '/surveys/:survey_id' do

	survey_taken = SurveyResponse.create(survey_id: params[:survey_id] ,user_id: session[:user_id] )
	survey = Survey.find(params[:survey_id])
	#params.each

	survey.questions.each do |question|
		QuestionResponse.create(choice_id: params[question.id.to_s].to_i, survey_response_id: survey_taken.id)
	end
	redirect "/users/#{session[:user_id]}"
end

delete "/surveys/:survey_id" do
	@survey = current_user.surveys.find(params[:survey_id])
	@survey.destroy
	status 200
end


