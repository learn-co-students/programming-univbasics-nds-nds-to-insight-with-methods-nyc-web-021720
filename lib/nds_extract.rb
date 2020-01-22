$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
  worldwide_grosses = 0
  while movie_index < director_data[:movies].length
    worldwide_grosses += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
worldwide_grosses
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  direct_index = 0
  result = {}
  while direct_index < nds.length
    directorname = nds[direct_index][:name]
    directortotal = gross_for_director(nds[direct_index])
    result[directorname] = directortotal
    direct_index += 1
  end
  result
end
