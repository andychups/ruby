#!/usr/bin/ruby

#
# Basic
#

# Single comment
=begin
Multiline
comments
=end

username = 'andychups'

puts 'Hello world'
puts "Hello #{username}"
puts %q!Hello world!
puts <<DOCUMENT
bla bla bla
bla bla bla
bla bla bla
DOCUMENT
print "Hello world\n"
puts 'H'.ord

comedian = 'Stephen Colbert'
favorite_comedian = comedian

puts comedian.upcase!, favorite_comedian
puts comedian.downcase, favorite_comedian



#
# Program flow
#
age = (rand * 100).round
puts "Age: #{age}"

if age <= 23
  puts 'Very young'
elsif age <= 30
  puts 'Young'
elsif age <= 45
  puts 'Ok'
elsif age >= 55
  puts 'Old!'
end

unless age > 50
  puts 'Age is less 50'
end

case age
  when 0..50
    puts 'Half past of life'
  when 100
    puts 'Wow!'
  else
    puts 'Nobody care'
end



#
# Functions
#

def get_length( value )
  return value.length
end

puts "Comedian string length is it #{ get_length( comedian ) } symbols"



#
# Code blocks
#

3.times { |x| puts "Code block 1.#{ x }" }

def simple_function
  puts 'Before yield'
  yield
  yield
  puts 'After yield'
end

simple_function { puts 'Hello!' }

def animals
  yield 'Tiger'
  yield 'Giraffe'
end

animals { |x| puts "Hello, #{x}" }

# http://en.wikibooks.org/wiki/Ruby_Programming/Data_types