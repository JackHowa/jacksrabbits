get '/walks' do
  @walks = Walk.all
  erb :"walks/index"
end

get '/walks/:id' do
  @walk = Walk.find_by(id: params[:id])
  @walker = User.find_by(id: @walk.user_id)
  @rabbit = Rabbit.find_by(id: @walk.rabbit_id)
  erb :"walks/show"
end
