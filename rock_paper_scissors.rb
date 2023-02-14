VALID_CHOICES = %w[rock paper scissors lizard spock]
VALID_CHOICES_SHORT = {
  'r': 'rock',
  'p': 'paper',
  'c': 'scissors',
  'l': 'lizard',
  's': 'spock'
}
VALID_CHOICES_STR = '(r)ock, (p)aper, s(c)issors, (l)izard, (s)pock'
WINNING_CHOICES = {
  'rock': %w[scissors lizard],
  'paper': %w[rock spock],
  'scissors': %w[paper lizard],
  'lizard': %w[spock paper],
  'spock': %w[scissors rock]
}

def prompt(message)
  puts "=> #{message}"
end

def result(player, computer)
  if WINNING_CHOICES[player.to_sym].include?(computer)
    'You scored a point!'
  elsif player == computer
    "It's a tie!"
  else
    'Computer scored a point!'
  end
end

def player_choice
  loop do
    prompt("Choose one: #{VALID_CHOICES_STR}")
    choice = gets.chomp.downcase
    choice = VALID_CHOICES_SHORT[choice.to_sym] if choice.size == 1

    return choice if VALID_CHOICES.include?(choice)

    prompt("That's not a valid  choice.")
  end
end

player_score = 0
computer_score = 0
loop do
  choice = player_choice

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}")
  prompt("Computer chose: #{computer_choice}")

  winner_message = result(choice, computer_choice)
  prompt(winner_message)

  case winner_message
  when 'You scored a point!'
    player_score += 1
  when 'Computer scored a point!'
    computer_score += 1
  end

  prompt("Your score: #{player_score}")
  prompt("Computer score: #{computer_score}")

  next unless player_score == 3 || computer_score == 3

  if player_score == 3
    prompt('You won the match!')
  else
    prompt('Computer won the match!')
  end

  prompt('Do you want to play again? (y)')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')

  player_score = 0
  computer_score = 0
end
