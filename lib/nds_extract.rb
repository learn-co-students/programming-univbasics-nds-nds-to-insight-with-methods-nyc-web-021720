$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_director_gross = 0
  director_data[:movies].each do |movie|
    total_director_gross += movie[:worldwide_gross]
  end
  total_director_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nds.each do |director_info|
    total_director_gross = gross_for_director(director_info)
    result[director_info[:name]] = total_director_gross
  end
  result
end

#directors_totals(directors_database)
directors_totals(directors_database)
