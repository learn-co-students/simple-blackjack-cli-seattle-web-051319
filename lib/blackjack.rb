def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  display_card_total(first_card + second_card)
  first_card + second_card

end

def hit?(x)
  card_total = x
  prompt_user
   if get_user_input == 'h'
      card_total = deal_card + card_total
    end
      return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner(x)
  welcome
  initial_round
  hit?
  display_card_total
  hit?
  display_card_total
  end_game
end
