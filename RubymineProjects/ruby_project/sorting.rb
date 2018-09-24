class Sorting
  #Sorting of integer array
  puts "sorting"
  a = [8, 5, 4, 1]
  for j in 0...a.length
    for i in j+1...a.length
      if a[j] > a[i]
        temp = a[j]
        a[j] = a[i]
        a[i] = temp
      end
    end
  end
  print a
   #Sorting of string

end