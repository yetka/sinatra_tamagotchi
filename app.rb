require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')

get('/') do
  @list = Tamagotchi.all()
  erb(:list)
end

post('/') do
  name = params["name"]
  tamagotchi = Tamagotchi.new(name)
  tamagotchi.save()
  @list = Tamagotchi.all()
  erb(:list)
end

get('/animal/:id') do
  @tamagotchi = Tamagotchi.find(params[:id])
  erb(:animal)
end
