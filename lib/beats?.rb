class String
  define_method(:beats?) do |item|
    if self == "rock" && item == "scissors"
      true
    elsif self == "scissors" && item == "paper"
      true
    elsif self == "paper" && item == "rock"
      true
    elsif self == item
      nil
    else
      false
    end
  end
end
