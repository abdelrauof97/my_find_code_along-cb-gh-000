require 'pry'

def my_find(collection)
  i = 0 
  new_array = []
  while i < collection.length 
    if yield(collection[i])
      return collection[i]
    end
    i += 1
  end
  new_array
end
collection = (1..100).to_a
binding.pry
my_find(collection) { |x| x % 3 == 0  and x % 5 == 0}
