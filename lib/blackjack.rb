def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1...12)
end

def display_card_total(ct)
  puts "Your cards add up to #{ct}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets
  return input.chomp
end

def end_game(ct)
  puts "Sorry, you hit #{ct}. Thanks for playing!"
end

def initial_round
  one = deal_card
  two = deal_card
  display_card_total(one + two)
  return one + two
end

def hit?(ct)
  prompt_user
  int = get_user_input
  while int == 'h'
    int = get_user_input
  end
  return ct
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
