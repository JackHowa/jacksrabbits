get '/users/new' do
  erb :"users/new"
end

post '/users' do
  @new_user = User.new(name: params[:name], email: params[:email], password: params[:password])
  if @new_user.save
    session[:user_id] = @new_user.id
    redirect "/users/#{@new_user.id}"
  else
    @errors = @new_user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/:id' do
  @user = User.find_by(id: params[:id])
  erb :"users/show"
end 