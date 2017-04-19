require('sinatra')
require('sinatra/reloader')
require('./lib/beats?')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/winner') do
  random_number = rand(1..3)
  if random_number == 1
    item = "rock"
  elsif random_number == 2
    item = "scissors"
  else
    item = "paper"
  end
  @item = item
  result = params.fetch('choice').beats?(item)
  if result == true
    @winner = "You won"
  elsif result == nil
    @winner = "Draw"
  else
    @winner = "You lost"
  end
  erb(:winner)
end
