#Given number is prime or not
#Remember that smallest prime number is 2.
num = 10
flag = true
for i in 2..(num/2)
  if num % i == 0
    flag = false
    break
  end
end

if flag == true
  puts "#{num} is prime"
else
  puts "#{num} is not prime"
end

#prints prime numbers
#puts "First ten prime numbers: "
#n = gets.chomp.to_i
##puts n
#
#for j in 2..n
#  for i in 2..(n/2)
#    if num % i == 0
#      flag = false
#      break
#    end
#    puts j
#  end
#  puts j
#end
class Prime
def is_prime?(num)
  (2...num).each do |divisor|
    return false if num % divisor == 0
  end

  true
end

def primes(max)
  primes = []

  (2...max).each do |num|
    primes << num if is_prime?(num)
  end

  primes
end
end
obj = Prime.new
obj.primes(10)
obj.is_prime?(10)

