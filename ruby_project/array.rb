#Array and its methods:
#p Array.new(3, {}) #1st argument is size and second is value and both are optional
#p Array.new(6) { Array.new(3,Hash.new)}
#p Array.new(6, Array.new(3,{}))
#p Array.new(6, Array.new(3,1))

#class Array
#  def Array.new
#    super
#    "abcd"
#  end
#end
#
#a = Array.new
#p a.class


# adding method to an existing class
#class Array
#  def sweety
#    p "rajat"
#  end
#end

#a = Array.new
#a.sweety

#Creating multi-dimensional array
p Array.new(3,Array.new(3,[]))
p Array.new(3) {Array.new(3,[])}

#Accessing Array Elements
a = [1,2,3,4,5,5,6,7,8,9]
p a[0]
p a[-1]
p a[1..5] #Will take elements from index 1 to index 5
p a[5,4] #Start from index 5 and will take next 3 elements
p a.at(5) #'at' method is also used to access element of array
p a.at(100)
p a.fetch(100, "oops given index is outside of array") #To raise an error for indices outside of the array bounds or else to provide a default value when that happens, you can use fetch.
p a.fetch(5)
p a.first #'first' will return first element of array
p a.last #'last' will return last element of array
p a.take(5) #'take' method will return first n elements of array
p a.drop(5) #'drop' method will return elements after n elements, its opposite of 'take'

#Obtaining Information about an Array
p a.length #'length' will give count of elements in array
p a.empty? #'empty?' - check whether an array contains any elements at all
p a.include?(5) #'include?' - check whether a particular item is included in the array

#Adding Items to Arrays: Items can be added to the end of an array by using either push or <<
a << 10
p a.push(10)
p a.unshift(0) #'unshift' will add element at 0 position
p a.insert(4, 12) #'insert' will add a new element to an array at any position.
p a.insert(4, 12)
p a.insert(4, 14, "abc", "def") #Can insert multiple values

#Removing Items from an Array
p a.pop #'pop' removes the last element in an array and returns it
p a
p a.shift #'shift' removes the 1st item and returned the removed item
p a.delete_at(3) #'delete_at' an element at a particular index and returned the removed item
p a.delete(12) #'delete' a particular element anywhere in an array,
p a
p a.insert(3,nil, nil, nil)
p a.compact #'compact' - remove nil values from an array
p a
p a.compact! #'compact!' - remove nil values permanently from array
p a
p a.uniq #'uniq' - remove duplicate elements from an array
p a.uniq!

#Iterating over Arrays
#a.each {|i| puts i*2}
b = []
a.reverse_each {|i| b << i} #reverse_each which will iterate over the elements in the array in reverse order
p b
p a.map{|i| i*2} #map method can be used to create a new array based on the original array, but with the values modified by the supplied block
p a

#Selecting Items from an Array
p a.delete_at(3)
p a.delete_at(3)
p a.select{|i| i>4}
p a.reject{|i| i>5}
p a.drop_while{|i| i<4}
p a

p a.delete_if{|i| i<4} #delete value permanently
p a
p a.keep_if{|i| i>8} #delete values permanently
p a
p a = Array.new(3){Hash.new}
a[0][1] = "abc"
a[1]["b"] = "cde"
a[2]["r"] = "erf"
p a

a = Array.new(3,Hash.new) #When sending the second parameter, the same object will be used as the value for all the array elements
a[0][1] = "abc"
a[1]["b"] = "cde"
a[2]["r"] = "erf"
p a

#Concatenate:

a = [1,2,3,4]
b = [4,5,6]
p c = a + b
p d = c - [1,3, 4]
p c
#Comparision
#Arrays are compared in an “element-wise” manner; the first element of ary is compared with the first one of other_ary using the <=> operator, then each of the second elements, etc… As soon as the result of any such comparison is non zero (i.e. the two corresponding elements are not equal), that result is returned for the whole array comparison.
#If all the elements are equal, then the result is based on a comparison of the array lengths. Thus, two arrays are “equal” according to Array#<=> if, and only if, they have the same length and the value of each element is equal to the value of the corresponding element in the other array.
#nil is returned if the other_ary is not an array or if the comparison of two elements returned nil.
p d <=> b
p b <=> a #b[0] > a[0], so will return 1 and wll not chk other elements and size of arrays
p [1,2] <=> [1, :two]

#Equality
#Equality — Two arrays are equal if they contain the same number of elements and if each element is equal to (according to Object#==) the corresponding element in other_ary

e = [4,5,6,7]
p b == e #1st will chk the size and then each element
p b == d

#Assoc:Searches through an array whose elements are also arrays comparing obj with the first element of each contained array using obj.==
k = [a,b,c]
p k.assoc(1) #Assoc: will comapare 1st element of each array from obj that we passed and will return array that matches whose 1st element is matched with obj other wise nil
p k.assoc(7)

p d.clear #Removes all elements from self.

#Collect: Invokes the given block once for each element of self.
p a.collect{|i| i*2} #Creates a new array containing the values returned by the block.
p a

#Count:
a = [1,2,3,3,1,2,3]
p a.count #Returns the number of elements
p a.count(3) #If an argument is given, counts the number of elements which equal obj using ==.
p a.count{|i| i>2} #If a block is given, counts the number of elements for which the block returns a true value.

#Cycle: Calls the given block for each element n times or forever if nil is given.
a.cycle(3) {|x| puts x}

