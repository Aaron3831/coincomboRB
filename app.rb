require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin_combo') do
  @coin_combo = params.fetch('coin_combo').to_i.coin_combo()
  erb(:coin_combo)
end
