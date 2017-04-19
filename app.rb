require('sinatra')
require('sinatra/reloader')
require('./lib/beats')
require('./lib/functions')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/winner') do
  item = generate_item()
  @item = item
  result = params.fetch('choice').beats?(item)
  @choice = params.fetch('choice')
  winner = determine_winner(result)
  @winner = winner
  erb(:winner)
end
