def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
     card = rand(1..11)
end

def display_card_total(card_total)
   puts "Your cards add up to #{card_total}"

end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  i = gets.chomp
  return i
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
    round_1= deal_card + deal_card
    display_card_total(round_1)
    return round_1
  # code #initial_round here
end

def hit?(card_total)
    prompt_user
    i = get_user_input

    if i == 'h'


     card_total += deal_card

    elsif i == 's'
      card_total

    end

end

def invalid_command
  puts "invalid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    card_total = initial_round
     until card_total > 21
       card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
    # code runner here
end
