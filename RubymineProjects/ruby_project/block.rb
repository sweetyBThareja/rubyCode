###Block: block is a chunk of code.
#
#
#def test1(&p)
#puts yield
#end
#
#a = Proc.new{"I am proc"}
#
#test1 &a
#
#def ruby(&block)
#  p block.call
#end

#ruby{"This is my favorite book"}
#
#
###pc = Proc.new {|x,y| puts x;p y}
###lam.call(2)
####lam.call(1,2,3)
###pc.call(4)
####pc.call(2,3,4)
##
#p = proc { puts "in proc"}
#
#def abc(a,p,&b)
#  p a
#  p.call
#  b.call
#  yield
#end
#
#abc(6,p){puts "afsdfdx"}
#


#####################################################################

#a = [[1,2,3],['a','b','c','d']]
#
#for i in a
#  p i
#end
#
#for(w,x,y,z) in a
#  p "#{w} #{x} #{y} #{z}"
#end
#
#def test(p, l, &b)
#  puts p.call
#  puts l.call
#  puts b.call
#end
#
#anonymous = Proc.new{'I am proc'}
#lamb = lambda {'I am lambda'}
#test(anonymous, lamb) {'I am block'}
#
#anonymous = Proc.new {|x| puts x}
#anonymous.call(2,3)
#lam = lambda {|x| puts x}
#lam.call(5)
##lam.call(6,5)
#
#
#def lambda_test
#  lam = lambda {return}
#  lam.call
#  puts "abc"
#end
#
#lambda_test
#
#def proc_test
#  p = Proc.new {return}
#  p.call
#  puts "bcd"
#end
#
#proc_test
#
