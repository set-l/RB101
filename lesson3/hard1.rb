# Question 1

# if false
#   greeting = "hello world"
# end
#
# greeting

# nil


# Question 2

# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'
#
# puts informal_greeting  #  => "hi there"
# puts greetings

# {a: 'hi there'}


# Question 3

# A)
#   "one"
#   "two"
#   "three"
#
# B)
#   "one"
#   "two"
#   "three"
#
# C)
#   "two"
#   "three"
#   "one"


# Question 4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split('.')

  return false if dot_separated_words.size != 4

  is_valid = true
  while dot_separated_words.size.positive?
    is_valid = is_an_ip_number?(dot_separated_words.pop)
    break unless is_valid
  end

  is_valid
end

