# Question 1

# a = "forty two"
# b = "forty two"
# c = a
# 
# puts a.object_id # unique
# puts b.object_id # unique
# puts c.object_id # same as a.object_id


# Question 2

# a = 42
# b = 42
# c = a
#
# puts a.object_id # unique
# puts b.object_id # same as a.object_id
# puts c.object_id # same as a.object_id


# Question 3

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end
#
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)
#
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# "pumpkins" because string reassignment isnt mutating
# ["pumpkins", "rutabaga"] because adding to arrays is mutating


# Question 4

# def tricky_method_two(a_string_param, an_array_param)
#   a_string_param << 'rutabaga'
#   an_array_param = ['pumpkins', 'rutabaga']
# end
#
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method_two(my_string, my_array)
#
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# "pumpkinsrutabaga" because concatinating strings is mutating
# ["pumpkins"] because reasignment isnt mutating


# Question 5

def tricky_method(a_string_param, an_array_param)
  return "#{a_string_param}rutabaga", an_array_param + ['rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


# Question 6

def color_valid(color)
  %w[blue green].include?(color)
end
