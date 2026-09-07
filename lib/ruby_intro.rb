# frozen_string_literal: true

# Part 1

def sum(arr)
=begin  
  # Optimal solution using Ruby's .sum, Alternative Solution
  arr.sum
=end
  
# Simple Understandable solution
  total = 0
  arr.each do |number|
    total += number
  end
  total

end

def max_2_sum(arr)

  return 0 if arr.empty?
  return arr[0] if arr.length == 1
=begin 
  # Optimal solution using Ruby's .max(2).sum, Alternative Solution
  arr.max(2).sum
=end
  
  # Simple Understandable solution
  sorted_arr = arr.sort
  sorted_arr[-1] + sorted_arr[-2]

end

def sum_to_n?(arr, number)
  
  arr.each_with_index do |value, index|
    arr[(index + 1)..].each do |other_value|
      return true if value + other_value == number
    end
  end
  false

end



# Part 2

def hello(name)
=begin 
  # Optimal solution, Alternative Solution
  "Hello, #{name}"
=end

  # Simple Understandable solution
  greeting = "Hello, " + name
  greeting

end

def starts_with_consonant?(string)
=begin 
  # Optimal solution, Alternative Solution
  return false if string.empty?
  string.match?(/\A[b-df-hj-np-tv-z]/i)
=end

  # Simple Understandable solution
  return false if string.empty?
  first_letter = string[0]
  return false unless first_letter.match?(/[a-zA-Z]/)
  return false if first_letter.match?(/[aeiouAEIOU]/)
  
  true

end

def binary_multiple_of_4?(string)
=begin 
  # Optimal solution, Alternative Solution
  return false unless string.match?(/\A[01]+\z/)
  string.to_i(2) % 4 == 0
=end

  # Simple Understandable solution
  return false if string.empty?
  return false unless string.match?(/\A[01]+\z/)
  number = string.to_i(2)
  number % 4 == 0

end

# Part 3

# Object representing a book
class BookInStock

  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', @price)
  end

end
