$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  second_index = 0 #used to loop thru directors movies
  total_gross = 0
  while director_data[:movies].length > second_index do
    #totals the current directors gross
    total_gross += director_data[:movies][second_index][:worldwide_gross]
    second_index += 1
  end
  total_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  nds = directors_database
  #result will display the directors and their total.
  result = { }
  first_index = 0
  number_of_directors = nds.length
  while number_of_directors > first_index do
    #sets directors name
    director_name = nds[first_index][:name]
    #adds the current directors total gross
    individual_gross = gross_for_director(nds[first_index])
    #adds the current director and their total gross to the result hash.
    result[director_name] = individual_gross
    first_index += 1
  end
  result
end
