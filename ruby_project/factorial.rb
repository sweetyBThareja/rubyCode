#class Factorial
#  Factorial using loop
  n = 5
  fact = 1
  for i in 1..n
    fact = fact*i
  end
  puts fact

  #  Factorial using Recursion
  def fact(n)
    if n == 1
      return 1
    else
      return n*fact(n-1)
    end
  end
puts fact(5)

#end