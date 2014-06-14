get '/' do
  @surveys = Survey.all
  
  erb :index
end

get 'logout' do

end

post 'login' do

end
