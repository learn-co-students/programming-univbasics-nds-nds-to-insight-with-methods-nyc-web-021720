$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  
  pp director_data


index = 0 
total_number = 0 
while index < director_data[:movies].length do
   
total_number += director_data[:movies][index][:worldwide_gross]
 
index +=1
end

total_number

end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  pp nds 
  result = {}
  
index = 0 
while index < nds.length do
  movies =  nds[index][:movies]
   directors_name = nds[index][:name]
  index_number = 0
total_number = 0
while index_number < movies.length do 
total_number +=  movies[index_number][:worldwide_gross]
 
index_number += 1 
result[directors_name] = total_number

end
 index +=1
  

end 
 result
end














