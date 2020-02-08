$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  gross_index = 0
  gross = 0
  while gross_index < director_data[:movies].size do
    gross += director_data[:movies][gross_index][:worldwide_gross]
    gross_index += 1
    end
  gross
  return gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0
		while director_index < nds.size do
      result.store(nds[director_index][:name], gross_for_director(nds[director_index]))
			director_index += 1
		end
		result
end
