# Implementation of a list using a Native array --> ruby does this automatically
# Can only use .length (no other .anything)


class ArrayList
  def initialize
    @storage = [0,0,0,0,0,0,0,0,0,0]
    @size = 0 # To know what is a real 0 and what is a placeholder in @storage, we'll have another variable that tells us the number of real elements
  end

  # Adds _value_ at the end of the list
  def add(value)
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    # @storage[@size-1] = 0   # This is not necessary because the size determines which values int he native array mean something
    @size -= 1
  end

  #
  def display
    toReturn = "["
    @size.times do |i|
      toReturn += @storage[i].to_s
      unless i+1 == @size
        toReturn += ", "
      end
    end
    return toReturn + "]"
  end

  # Is the key in the array? --> iterate over the array and check
  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
    return false
  end

  #
  def size #
    return @size
  end

  #
  def max
    return nil if @size == 0

    max = @storage[0]
    @size.times do |i|
      if @storage[i] > max
        max = @storage[i]
      end
    end

    return max
  end

end

# Initializing an Array List
arr = ArrayList.new

# Adding Elements to Array List
arr.add(10)
arr.add(20)

# Display the Array List
puts "Displaying Array List:"
arr.display

puts "Delete last element and then display the array list:"
arr.delete
arr.display

# $ irb
# > require './array-list.rb'
# > arr = ArrayList.new
#   # => #<ArrayList:0x007f846a83ea00 @storage=[0, 0, 0, 0, 0, 0, 0, 0, 0, 0], @size=0>
# > arr.display
#  => "[]"
