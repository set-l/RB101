text = IO.read('calculator_messages.txt')
text = text.split(",\n").map do |stuck_pairs|
  stuck_pairs.split(': ')
end
PROMPTS = text.to_h

def prompt(message_type, att_to_msg = '')
  puts "#{PROMPTS[message_type]} #{att_to_msg}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end


prompt('hello')

name = ''
loop do
  name = gets.chomp

  break unless name.empty?

  prompt('no_name')
end

prompt('greet', name)

loop do
  number1 = ''
  loop do
    prompt('first')
    number1 = gets.chomp

    if valid_number?(number1)
      number1 = number1.to_i
      break
    else
      prompt('no_num')
    end
  end

  number2 = ''
  loop do
    prompt('second')
    number2 = gets.chomp

    if valid_number?(number2)
      number2 = number2.to_i
      break
    else
      prompt('no_num')
    end
  end

  prompt('operation')

  operator = ''
  loop do
    operator = gets.chomp

    break if %w(1 2 3 4).include?(operator)

    prompt('no_selection')
  end

  prompt("selection#{operator}")

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1.to_f / number2
           end

  prompt('result', result)

  prompt('play_again')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('goodbye')
