#replace a character from string
@str = "this is my new book"
@arr = @str.split(//)
for i in 0...@arr.length
  if @arr[i] == 'i'
    @arr[i] = 'j'
  end
end
print @arr
puts
print @new_str = @arr.join("")


#replace a word from string
@str_ar = @str.split(' ')
for i in 0...@str_ar.length
  if @str_ar[i] == 'my'
    @str_ar[i] = 'your'
  end
end
puts
print @str_ar
puts
print @str_ar.join(' ')

puts
#Reverse:
str = "sweety"
s = []
for i in 1..str.size
  s << str[-i]
end
s = s.join("")
print s
puts

for i in 1..10
  if i == 4
    print 'a'
  elsif i ==6
    print 'b'
  elsif
  i == 8
    print 'c'
  else
    print i
  end
end
puts
#Reverse one array to a new array without using length and reverse method.
a = [1,2,3,4]
c = []
a.each do |i|
c << a[-i]
end
print c
