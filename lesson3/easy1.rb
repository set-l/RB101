# Question 1

# numbers = [1, 2, 2, 3]
# numbers.uniq
#
# puts numbers

# Expected output:
# 1
# 2
# 2
# 3


# Question 2

# The difference between ! and ?:
# ! is used to reverse boolean values
# ? is used in ternary if expressions

# != is used to compare two values and return a boolean value
# ! before something is used to reverse boolean value
# ! after something can signify destructive methods
# ? before something usually results in an error 
#   unless used in ternary if expressions
# ? after something can signify methods that return boolean values
# !! before something is used to convert values into boolean values


# Question 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.sub!('important', 'urgent') 


# Question 4

# numbers = [1, 2, 3, 4, 5]
# numbers.delete_at(1) # deletes element at index
# numbers.delete(1) # deletes element of equal value


# Question 5

(10..100).include?(42)


# Question 6

famous_words = "seven years ago..."
missing_front = "Four score and "
famous_words = missing_front + famous_words
famous_words.prepend(missing_front)


# Question 7

nested_arr = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
nested_arr.flatten!


# Question 8

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones = flintstones.assoc("Barney")
