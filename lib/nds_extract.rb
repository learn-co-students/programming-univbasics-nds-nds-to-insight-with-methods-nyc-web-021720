$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  
  filmsMade = director_data[:movies].count
  movie_gross = 0 
  gross_index = 0
    
    while gross_index < filmsMade do
      #binding.pry
      director_gross = director_data[:movies][gross_index][:worldwide_gross]
      movie_gross += director_gross 
      gross_index += 1
    end 
    
  movie_gross
  
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)

  result = {}
  director_index = 0

  while director_index < nds.count do 
    filmsMade = nds[director_index]
    total_gross = gross_for_director(filmsMade)
    director_name = nds[director_index][:name]
    result[director_name] = total_gross
    director_index += 1 
  end

  result

end

#updated to work
