# Given two integers
# return the sum

# START
#
# Given two integers called "number1" and "number2"
#
# PRINT number1 + number2
#
# END


# Given an array of strings
# iterate over the array
# starting with the first element, create a new array with every other element
# return the new array

# START
#
# Given array of strings called "strings"
#
# SET new_array = []
# SET iterator = 0
#
# WHILE iterator < length of strings
#   SET push new array with strings[iterator]
#   SET iterator = iterator + 2
#
# PRINT new_array
#
# END


# Given a string and a character
# find the index of the 3rd occurrence of the character within the string
# return the index of the 3rd occurrence or nil

# START
#
# Given a string called "string" and a character called "char"
#
# SET number_of_occurrences = 0
# SET index_of_third = nil
# SET iterator = 0
#
# WHILE iterator < length of string
#   IF character of string at index of iterator == char
#     SET number_of_occurrences = number_of_occurrences + 1
#     IF number_of_occurrences = 3
#       SET index_of_third = iterator
#       break from while loop
#
# PRINT index_of_third
#
# END



# Given two arrays of equal amount of numbers 
# create new empty array
# iterate through the length of an array
# place elements of first array at even indexes and elements of second array at odd indexes
# return the merged array

# START
#
# SET new_array = []
# SET iterator = 0
#
# WHILE iterator < length of the first array
#   IF iterator is even
#     SET push new_array with value at the iterator index of the first array
#   ELSE
#     SET push new_array with value at the iterator index of the second array
#
# PRINT new_array
#
# END
