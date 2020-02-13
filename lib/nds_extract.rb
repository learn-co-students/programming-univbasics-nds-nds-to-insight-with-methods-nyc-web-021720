$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
total = 0
  mov_index = 0 

  while mov_index < director_data[:movies].length do 
    total += director_data[:movies][mov_index][:worldwide_gross]
    mov_index += 1 
  end 
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
    dir_index = 0 
  while dir_index < nds.length do 
    dir = nds[dir_index]
    result[dir[:name]] = gross_for_director(dir)
    dir_index += 1 
  end 
  result
end