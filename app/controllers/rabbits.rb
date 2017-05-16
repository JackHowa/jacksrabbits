get '/' do 
	redirect '/rabbits'
end 

# show all rabbits 
get '/rabbits' do 
	@rabbits = Rabbit.all
	erb :"rabbits/index"
end 