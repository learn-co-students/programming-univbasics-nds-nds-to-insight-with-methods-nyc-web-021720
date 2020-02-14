$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'



# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)

  result = {
  }

  rows = 0
  while rows < nds.length do
    columns = 0
    while columns < nds[rows][:movies].length do

        if result[nds[rows][:name]]
           result[nds[rows][:name]] += nds[rows][:movies][columns][:worldwide_gross]
        columns += 1
        else
            result[nds[rows][:name]] = nds[rows][:movies][columns][:worldwide_gross]
        columns += 1
        end

    end
    rows += 1

  end


  result
end

def gross_for_director(director_data)
  total =0
  count = 0
  while count < director_data[:movies].length do
    total += director_data[:movies][count][:worldwide_gross]

    count += 1
  end
  total
end
