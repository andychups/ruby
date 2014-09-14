#!/usr/bin/ruby

def max( unsorted_array )
  fail TypeError, 'Argument must be a Array' unless unsorted_array.is_a?(Array)
  max = nil

  unsorted_array.each_with_index {
    |value, index|

    return unsorted_array[0] if unsorted_array.length == 1

    next_value = unsorted_array[index + 1]

    if next_value
      if value > next_value
        max = value
      else
        max = next_value
      end
    end
  }

  return max
end

def bubble_sort( unsorted_array )
  fail TypeError, 'Argument must be a Array' unless unsorted_array.is_a?(Array)

  unsorted_array.each_with_index {
    unsorted_array.each_with_index {
      |value, index|

      next_value = unsorted_array[index + 1]

      if next_value && value > next_value
        unsorted_array[index] = next_value
        unsorted_array[index + 1] = value
      end
    }
  }

  return unsorted_array
end

# sputs bubble_sort({ :a => 'A' })
puts bubble_sort([22, 9, 1, 2]).join(',')
puts bubble_sort([1]).join(',')
puts max([9, 1, 13, 2])
puts max([9])