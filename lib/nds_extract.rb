$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)

total = 0 
index = 0 
  while index < director_data[:movies].length 
    director_gross = director_data[:movies][index][:worldwide_gross]
    total += director_gross
    index += 1 
  end 

#binding.pry 

return total
end 

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
 total_hash = {}
 row = 0 
  
 while row < directors_database.length 
  name = directors_database[row][:name]
  total_gross = gross_for_director(directors_database[row])
  total_hash[name] = total_gross
 # binding.pry 
  row += 1 
  end 
 #binding.pry
 return total_hash 
end 

 
