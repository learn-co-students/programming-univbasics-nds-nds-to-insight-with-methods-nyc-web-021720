$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_g = 0   #total gross
  for x in director_data[:movies]
    total_g += x[:worldwide_gross]
  end
  total_g
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  for x in nds do
    result[x[:name]] = gross_for_director(x)
  end
  result 
end
