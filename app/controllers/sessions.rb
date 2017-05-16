get '/sessions/new' do
  erb :"sessions/new"
end

post '/sessions' do
  @user = User.find_by(email: params[:email])

  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}" 
  else
    @errors = ["Either you username or password was wrong"]
    erb :"sessions/new"
  end
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end