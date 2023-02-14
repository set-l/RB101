# Question 1

10.times { |i| puts 'The Flintstones Rock!'.rjust(i + 'The Flintstones Rock!'.length) }


# Question 2

# puts "the value of 40 + 2 is " + (40 + 2)

# This error occurs because integer(40+2) is not a string
# Fix this error by converting (40 + 2) into a string using:
#   (40 + 2).to_s
#   "#{40 + 2}"


# Question 3

def factors(number)
  return if number <= 0

  factors = []
  number.downto(1) { |i| factors << number / i if (number % i).zero? }
  factors
end

# return nil if input is 0 or negative
# replace begin/end until with number.downto() {}
# number % i == 0 checks if i evenly goes into number with no remainder
# the last line "factors" acts as a return statement


# Question 4

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# argument "buffer" is being mutated, and unnecessarily returned

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# argument "input_array" is untouched and a new "buffer" is returned


# Question 5

# limit = 15
#
# def fib(first_num, second_num)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end
#
# result = fib(0, 1)
# puts "result is #{result}"

# variable "limit" is outside of method "fib" scope


# Question 6

# answer = 42
# 
# def mess_with_it(some_number)
#   some_number += 8
# end
# 
# new_answer = mess_with_it(answer)
# 
# p answer - 8

# The output is: 34


# Question 7

# The data was mutated since assigning hash elements is mutating
# However, the data remains hard coded into the file


# Question 8

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# "paper"


# Question 9

# def foo(param = "no")
#   "yes"
# end
#
# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end
#
# bar(foo)

# returns "no"
