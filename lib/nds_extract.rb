$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  movie_index = 0
  director_movies = director_data[:movies].length
  director_worldwide_gross = 0
    while movie_index < director_movies do
      director_worldwide_gross += director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
  director_worldwide_gross
end

# director_data = directors_database[row_index]

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  row_index = 0
  
  while row_index < nds.length do
    director_data = nds[row_index]
    director_name = nds[row_index][:name]
    
    result[director_name] = gross_for_director(director_data)
    row_index += 1
  end
  result
end