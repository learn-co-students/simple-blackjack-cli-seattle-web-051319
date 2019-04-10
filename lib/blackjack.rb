def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  move = get_user_input
  if move == 'h'
    total = total + deal_card
  elsif move != 's'
    invalid_command
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  total = initial_round
  while total <= 21
    total = hit?(total)
    display_card_total(total)
  end
  puts "Sorry, you hit #{total}. Thanks for playing!"
end
