get '/' do 
	redirect '/rabbits'
end 

# show all rabbits 
get '/rabbits' do 
	@rabbits = Rabbit.all
	erb :"rabbits/index"
end 

# show one rabbit
get '/rabbits/:rabbit_id' do 
	@rabbit = Rabbit.find_by(id: params[:id])
	erb :"channels/show"
end 