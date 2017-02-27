def Table()
  balance = 100
  spins = 0
  stake = 2

  black = [2, 4, 6, 8, 10, 11, 13, 15, 17, 20, 22, 24, 26, 28, 29, 31, 33, 35]
  red = [1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36]
  green = [0]

while balance > 0 && balance < 200
  # automatic - comment out this section to remove
  bet = "black"
  stake = stake
  if stake > balance
    stake = balance
  end

  # Manual (remove hash tags to play game by game)
  #puts "do you want to bet on red or black?"
  #bet = gets.chomp.downcase
  #puts "your balance is #{balance}. How much do you want to bet?"
  #stake = gets.chomp.to_i

  # puts "Your balance is #{balance}. Your stake is #{stake}. And you bet on %s" % bet

  ball = rand(0..36)
  if green.include?(ball)
    # puts "the ball landed on #{ball}: green"
    bet_colour = "green"
  elsif black.include?(ball)
    # puts "the ball landed on #{ball}: black"
    bet_colour = "black"
  elsif red.include?(ball)
    # puts "the ball landed on #{ball}: red"
    bet_colour = "red"
  end

  
  if bet == bet_colour
    #puts "You won, well done!"
    balance += stake
    #puts "Your balance is now #{balance}"
    #stake = 2
  else
    #puts "Not this time I'm afraid"
    balance -= stake
    #stake = stake * 2
    #puts "Your balance is now #{balance}"
  end

  spins += 1
  
end

  if balance == 0
    puts "L #{spins}"
  end
  if balance == 200
    puts "W #{spins}"
  end
end

1000.times { Table() }
