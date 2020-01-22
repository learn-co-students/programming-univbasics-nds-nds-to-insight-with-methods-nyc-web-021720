$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)
  total = 0 
  movies_index = 0 
  while movies_index < director_data[:movies].length
    director_data[:movies].length.times do |i|
      total += director_data[:movies][i][:worldwide_gross]
      movies_index += 1
    end
  end
  return total
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  outer_index = 0 
  while outer_index < nds.length do
    director_data = nds[outer_index]
    director_name = director_data[:name]
    result[director_name] = gross_for_director(director_data)
    outer_index += 1
  end
  return result
end
