class TestClass
  def initialize id, name
    @id = id
    @name = name
  end

  def id
    @id
  end

  def name
    @name
  end

  def name= s
    @name = s
  end
end

#Test it works properly
tc = TestClass.new 12, 'Boris'
p tc.id
p tc.name
tc.name = 'Alfie'
p tc.name

#Ruby offers a short cut for getters and setters. The above class can be re-written like this:
 class TestClass
 def initialize id, name
 @id = id
 @name = name
 end
attr_reader :id
attr_accessor :name
end
obj = TestClass.new 1, "sweety"
p obj.id
p obj.name

#Ruby offers a short cut for getters and setters. i.e accessor methods
class TestClassA
attr_accessor :name, :id
end
obj1 = TestClassA.new
obj1.name = "Rajat"
obj1.id = 2
puts obj1.name
puts obj1.id