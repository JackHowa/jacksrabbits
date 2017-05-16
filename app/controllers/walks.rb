get '/walks/index' do
  @walks = Walk.all
  erb :"users/new"
end
