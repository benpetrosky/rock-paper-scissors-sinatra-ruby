def generate_item()
  random_number = rand(1..3)
  if random_number == 1
    item = "rock"
  elsif random_number == 2
    item = "scissors"
  else
    item = "paper"
  end
  return item
end

def determine_winner(result)
  if result == true
    winner = "You won"
  elsif result == nil
    winner = "Draw"
  else
    winner = "You lost"
  end
  return winner
end
