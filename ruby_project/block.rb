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
##def ruby(&block)
##  p block.call
##end
##
##ruby{"This is my favorite book"}
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

a = [[1,2,3],['a','b','c','d']]

for i in a
  p i
end

for(w,x,y,z) in a
  p "#{w} #{x} #{y} #{z}"
end


