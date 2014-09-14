#!/usr/bin/ruby

def factorial( number )
  return number > 1 ? number * factorial( number - 1 ) : 1
end

puts factorial(5)

