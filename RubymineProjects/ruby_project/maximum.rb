#maximum of three numbers
#Using initialize method
class Max
  def initialize
    @a = 10
    @b = 20
    @c = 50
  end

  def max_number
    if @a > @b && @a > @c
      max = @a
    elsif @b > @c
      max = @b
      puts max
    else
      max = @c
      puts max
    end
    puts "maximum number is #{max}"
  end

#Using local variable
def max_no
  a = 30
  b = 40
  if a > b
    max = a
    puts max
  else
    max = b
    puts max
  end
end

def setter(a, b)
  @a = a
  @b = b
end
end

obj = Max.new
obj.setter(10, 20)
obj.max_number
obj.max_no

#Maximum of more than 3 numbers
#Using sort
a = [1, 100, 4, 12, 9, 5, 11]
for i in 1...a.size
  if a[i-1] > a[i]
    temp = a[i-1]
    a[i-1] = a[i]
    a[i] = temp
  end
  #print a
end
puts "Largest number #{a.last}"

class A
  def abc

  end
  def xyz

  end
end

ob = A.new
p A.instance_methods false






