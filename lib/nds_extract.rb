$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

#director_data = directors_database[0]
#pp directors_database[0][:movies][0][:worldwide_gross]


def gross_for_director(director_data)
  total = 0
  movie_index = 0 
  while movie_index < director_data[:movies].length do
    total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1 
  end
  total 
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  directors_index = 0 
  while directors_index < nds.length do 
    director_data = nds[directors_index]
    result[director_data[:name]] = gross_for_director(director_data)
    directors_index += 1 
  end
  result
end


