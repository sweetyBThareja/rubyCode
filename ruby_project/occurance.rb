#array.count(i) - will count given character in array

#Using array methods:
#Occurances of integer in array
@int = [1, 2, 3, 1, 4, 2, 5]
@b = @int.uniq
@b.each do |f|
  puts "count of number #{f} in array: " + @int.count(f).to_s
end

puts "##############"

#Occurance of characters in string
@str = "this is my book"
@a = @str.count('i')
@array = @str.split("") #convert string into array
print @unique_char = @array.uniq #return unique string
@unique_char.each do |e|
  puts "count of character '#{e}' in array: " + @array.count(e).to_s
end

puts "##############"

#Occurance of words in string
@ptr = "this is my new book . new book is very good"
@str_arr = @ptr.split(' ')
p @unic_str = @str_arr.uniq
@unic_str.each do |y|
  puts "count of word '#{y}' in given string: " + @str_arr.count(y).to_s
end
#find and return a duplicate value in array:
p "############"
f = [1,4,5,3,2,6,4,5,6]
print f.reject{|i| i == f[0]}
puts
print f.detect{ |e| f.count(e) > 1 }
puts
print f.select{|item| f.count(item) > 1}.uniq
#Detect returns the first item in the list for which the block returns TRUE. Your first example:
#>> [1,2,3,4,5,6,7].detect { |x| x.between?(3,4) }#=> 3
#Returns 3 because that is the first item in the list that returns TRUE for the expression x.between?(3,4).
#detect stops iterating after the condition returns true for the first time. select will iterate until the end of the input list is reached and returns all of the items where the block returned true.
