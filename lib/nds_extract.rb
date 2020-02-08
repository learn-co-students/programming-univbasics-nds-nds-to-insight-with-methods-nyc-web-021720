$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
total=0
m= director_data[:movies]
row = 0
while row < m.length 
  g= m[row][:worldwide_gross]
  row += 1
  total += g
end
total

end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
result=[]
row = 0 
  while row < nds.length 
    total = 0

    names= nds[row][:name]
    movies= nds[row][:movies]
    column=0 
    while column < movies.length 
      t=  movies[column][:worldwide_gross]
      column += 1
      total +=  t
  end
    row += 1
     result << [names,total]
  end
  result.to_h
end

