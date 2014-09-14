#!/usr/bin/ruby

def print_section( section_title )
  puts "\n\n--- #{ section_title }"
end

# https://github.com/bbatsov/ruby-style-guide#syntax
# http://devdocs.io/ruby/

#
# Basic
#
print_section('Basic')

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
print_section('Program flow')

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
print_section('Functions')

def get_length( value )
  return value.length
end

puts "Comedian string length is it #{ get_length( comedian ) } symbols"



#
# Code blocks
#
print_section('Code blocks')

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



#
# Data types
#
print_section('Data types')

# Constants
# Symbols
# Hashes
# Arrays
# Strings
# Numbers (Integers and Floats)

h = {:a => 'yep, it\'s a hash!', :b => 42, :c => 'fun for coders.'}
puts 'Stringy string McString!'.class
puts 1.class
puts nil.class
puts h.class
puts :symbol.class

# Constants
MY_PLANET = 'Earth'
puts "My planet is #{ MY_PLANET }"

# Symbols
live_long = 'live long and prosper'
puts live_long.object_id
puts 'live long and prosper'.object_id
puts live_long.object_id
puts :live_long_and_prosper.object_id
puts :live_long_and_prosper.object_id

# Hashes
hash_list = { :key_1 => 'a', :key_2 => 'b', :key_3 => 'c' }
puts hash_list[:key_1]
hash_list[:key_4] = 'd'
hash_list.delete(:key_1)
hash_list.each do |key, value|
  puts "#{ key }, #{ value }"
end

# Arrays
array1 = ['a', 'b', 'c', 'd', 'e']
array2 = %w(0 1 2 3 4 e)
array3 = array1 - array2
array1[0] = 'AAA'
print array1, "\n"
print array3, "\n"
puts array1.include?('d')
puts array2.join(',')

# Strings
my_str = 'Abcde09123fdsdsfdfdsfdf'
my_digit_array = []
puts 'A'.ord
puts 65.chr
puts 'Con' + 'cat'
puts my_str[2]
puts my_str.upcase
my_str.scan(/[0-9]/) {|digit| my_digit_array.push(digit)}
print my_digit_array, "\n"
puts my_str.sub('fd', 'JOPA')
puts my_str.gsub('fd', 'JOPA')

# Numbers
puts "10 / 7 = #{ 10 / 7 }"
puts "10.0 / 7 = #{ 10.0 / 7 }"

1.upto(10) {|number| puts "#{number} Ruby loops, ah-ah-ah!"}

puts "T-minus..."
10.downto(1) {|x| puts x}
puts "Blast-off!"

5.step(50, 5) {|x| puts x}

puts 451.to_s.class
puts 98.6.to_s.class
puts 4.5.to_i.class
puts 5.to_f.class