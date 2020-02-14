$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movies_sum = 0
  director_data[:movies].each do |movie|
    movies_sum += movie[:worldwide_gross]
  end

 return movies_sum
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
 results = {}
 nds.each do |director_data|
  results[director_data[:name]] = gross_for_director(director_data) 
  end
 results
end
