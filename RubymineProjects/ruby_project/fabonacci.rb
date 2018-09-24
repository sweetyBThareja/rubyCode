#  Fabonacci is sum of two previous number
# n = 1234....(n-2)(n-1)n
#  Fabonacci using loop
n = 7
a = 0
b = 1
print a
print b
for i in 0..n
  c = a+b
  print c
  a = b
  b = c
end
puts
#  Fabonacci using recursion
# n = (n-1) + (n-2)
def fibo(n)
  if n == 2 || n == 1
    return 1
  elsif n == 0
    return 0
  else
   return fibo(n-1)+fibo(n-2)
  end
end
for i in 0..9
print fibo(i)
end