
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1+rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = deal_card+deal_card
  display_card_total(card_total)
  card_total
end

def hit?(current_card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  total = current_card_total
  if input == "s"
  elsif input == "h"
    total += deal_card
  else
    invalid_command
    prompt_user
  end
  total
end

def invalid_command
  # code invalid_command here
  puts "Please input a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  number = initial_round
  until number > 21 do
   total = hit?(number)
   display_card_total(total)
   number = total
  end
  end_game(number)
end
