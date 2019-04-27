def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
  puts "Your cards add up to #{total}"
end

def hit?(number)
  prompt_user
  input = get_user_input
  until input == 's' || input == 'h'
    invalid_command
    prompt_user
    input = get_user_input
  end
  if input == 'h'
    number += deal_card
  elsif input == 's'
    number
  else
    invalid_command
  end
end

def invalid_command
  if get_user_input != 's' || 'h'
  puts "Please enter a valid command"
end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  until hand > 21 do
    hand = hit?(hand)
    display_card_total(hand)
  end
 puts "Sorry, you hit #{hand}. Thanks for playing!"
end
