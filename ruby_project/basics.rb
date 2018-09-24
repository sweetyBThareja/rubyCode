#class Basics
#  #print pyramid of star
#  for i in 1..5
#    for j in 1..i
#      print "*"
#    end
#    puts
#  end
#end
#puts "###########"
##print pyramid of star in reverse order
#
#for i in 1..5
#  for j in i..5
#    print "*"
#  end
#  puts
#end
#puts "###########"
##print pyramid of star in reverse order
#
#for i in 1..5
#  for j in i..5
#    print "*"
#  end
#  puts
#end
#puts "###########"
##print pyramid of number reverse order
#for i in 1..5
#  for j in -5..-i
#    print -j
#  end
#  puts
#end
#puts "###########"
##print alphabet
#for i in 'a'..'z'
#  puts i
#end
#
#puts "#############"
#
##i = 'a'
##while( i <= 'z')
##  puts i
##  i += 1 #not working
##end
#
##print multiplication table
#n = 5
#for i in 1..10
#  puts "#{i*n}"
#end
#puts "###########"
##get input from user
##puts "Enter a value: "
##n = gets
##puts n
##get input from user, find number is odd or even
#puts "Enter a value: "
#k = gets.chomp.to_i
#if k%2 == 0
#  puts "#{k} is even"
#else
#  puts "#{k} is odd"
#end


#1111111
#1111
#11
#1
# need to correct
#n = 8
#r = 4
#for i in 1..n
#  for j in 1..n+i
#     print "1"
#  end
#  r-=1
#  puts
#end

a = [1, 100, 4, 12, 9, 5, 11]

l = a[0]
for i in 1..a.size-1
  l = a[i] if a[i] > l
end
p l
 # OR
for i in 1...a.size
  if a[i-1] > a[i]
    temp = a[i-1]
    a[i-1] = a[i]
    a[i] = temp
  end
  #print a
  end
puts "Largest number #{a.last}"

#OR
#Without array
a = 8
b = 5
c = 7
d = 12
e =10
max = 0
if a > b && a > c && a > d && a > e
  max = a
elsif b > a && b > c && b > d && b > e
 max = b
elsif c > a && c > b && c > d && c > e
  max = c
elsif d > a && d > b && d > c && d > e
  max = d
else
  max = e
end

puts max

a,b,c = 19,10,7
p a>b ? (a>c ? a : c) : (b>c ? b : c)
#OR
g = if a > b
      if a > c
        a
      else
        c
      end
    else
      if b > c
        b
      else
        c
      end
    end


a,b,c,d,e = 21,7,10,67,34

s = 0
p s
while s
 break if s == a ||s == b || s ==c || s == d || s == e
 s+=1
end

p s