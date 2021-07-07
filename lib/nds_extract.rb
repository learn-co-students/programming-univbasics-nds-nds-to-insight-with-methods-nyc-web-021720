$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

  
def gross_for_director(directors_data)
  
  i = 0 
  total = 0 
  while i < directors_data[:movies].length
  total += directors_data[:movies][i][:worldwide_gross]
  i += 1
end 
total
  
 end

 def directors_totals(nds) 
  index = 0
  arr = []
   while index < nds.length
    i = nds[index]
   index += 1 
  name_total = i[:name],gross_for_director(i)
  arr << name_total
end
arr.to_h
end


# def directors_totals(nds) 
  #index = 0
  #arr = []
  # while index < nds.length
   # i = nds[index][:name]
  # index += 1 
 # name_total = i,gross_for_director(nds[index])   #why does this method not work. if I put nds[index] in argument i get an error that talks about error of while loop in first method
 # arr << name_total
#end
#arr.to_h
#end
  
