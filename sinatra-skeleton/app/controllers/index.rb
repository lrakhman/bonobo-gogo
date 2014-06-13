
get '/' do
  @surveys = Survey.all
  erb :index
end

get 'users/:user_id/surveys/new' do

end

get 'users/:user_id' do

end

get 'surveys/:survey_id/detail' do

end

get 'surveys/:survey_id' do

end

get 'logout' do

end

post 'login' do

end

post 'users/new' do

end

post 'users/:user_id/surveys/new' do

end

post 'surveys/:survey_id' do

end
