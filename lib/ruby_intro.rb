# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  arr.each_with_index do |value, index|
    arr[(index + 1)..].each do |other_value|
      return true if value + other_value == number
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  return false if string.empty?
  string.match?(/\A[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  return false unless string.match?(/\A[01]+\z/)
  string.to_i(2) % 4 == 0
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
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
