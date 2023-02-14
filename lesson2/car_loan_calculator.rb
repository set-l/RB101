def calculate_loan(loan_amount, annual_rate, year_duration)
  is_float = annual_rate.to_s.start_with?('0.')
  annual_rate /= 100.0 unless is_float

  monthly_rate = annual_rate / 12
  month_duration = year_duration * 12

  monthly_payment = loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**-month_duration))

  puts "The monthy rate is #{monthly_rate}%"
  puts "The duration in months is #{month_duration}"
  puts "The monthly payment is $#{monthly_payment.truncate(2)}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

puts 'Welcome to the car loan calculator.'

input = {
  'loan amount': 0,
  'apr': 0,
  'duration in years': 0
}
input.each_key do |key|
  loop do
    puts "enter the #{key}:"
    this_input = gets.chomp
    if valid_number?(this_input)
      input[key] = this_input
      break
    else
      puts 'Invalid input. Please try again.'
    end
  end
end

puts 'calculating...'
puts calculate_loan(
  input[:'loan amount'].to_i,
  input[:apr].to_i,
  input[:'duration in years'].to_i
)
