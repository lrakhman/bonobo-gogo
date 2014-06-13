get '/' do
  @surveys = Survey.all
  erb :index
end

get '/logout' do
  erb :index
end

post '/login' do

end
