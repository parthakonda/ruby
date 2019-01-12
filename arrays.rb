=begin
Understanding arrays
=end 

# Defining array
products = [
    'Alexa Device',
    'Raspberry Pi',
    'Electronics Kit'
]

# Iterating array
products.each do |product|
    puts product
end


# Another way of defining array
products = Array.new

# Displaying array
puts "#{products}"

# Accessing array individually
products[0] = 10 # This will automatically append the value
products[10] = 20 # This will automatically create values with nil
puts "#{products}"
products[-2] = 20 # Negitive indexing
puts "#{products}"

# Defining and setting size of the array
products = Array.new(20)
puts "#{products.length}"
puts "#{products.size}"
products[3] = 10
puts "#{products.length}"
puts "#{products.size}"


# Creating array with all default values
products = Array.new(4, "Product-")
puts "#{products}"

# Creating the array with default values {}
products = Array.new(10) {
    |product| product = product * 2
}
puts "#{products}"

# Creating array with different default values
products = Array.[]('Alexa Device', 'Raspberry Pi', 'Electronics Kit')
puts "#{products}"

# or

products = Array['Alexa Device', 'Raspberry Pi', 'Electronics Kit']
puts "#{products}"

product_skus = Array(0..9)
puts "#{product_skus}"

# Exercises/ Case study
=begin
Original array:
["Red", "Green", "Blue", "White"]
Check if 'Green' in color array!
true
Check if 'Pink' in color array!
false
=end

# Solution using include
colors = ["Red", "Green", "Blue", "White"]
puts colors.include?("Green")

def find_color(colors, given_color)
    return colors.include?(given_color)
end

puts find_color(colors, 'Green')
puts find_color(colors, 'Yello')

=begin
Write a Ruby program to check whether 7 appears as either the 
first or last element in an given array. 
The array length must be 1 or more. 
=end

sample1 = [ 1, 2, 3, 4, 5 ]
sample2 = [ 7, 2, 3, 4, 5 ]
sample3 = [ 1, 2, 3, 4, 7 ]

def do_i_got_lottery(lottery_numbers, lottery_number)
    return (lottery_numbers.first == lottery_number || lottery_numbers.last == lottery_number)
end
puts "-----------"
puts do_i_got_lottery(sample1, 7)
puts do_i_got_lottery(sample2, 7)
puts do_i_got_lottery(sample3, 7)

=begin
Write a Ruby program to pick number of random elements from an given array
=end

def pick_random_number(numbers)
    return numbers.sample(1)
end

puts pick_random_number(sample1)
puts pick_random_number(sample1)

=begin
Write a Ruby program to check whether first and the last element are the same of an given array of integers. The array length must be 1 or more
=end
sample1 = [ 1, 2, 3, 4, 1 ]
sample2 = [ 7, 2, 3, 4, 5 ]

def is_first_last_same(numbers)
    return numbers.size > 0 && numbers.first == numbers.last
end

puts is_first_last_same(sample1)
puts is_first_last_same(sample2)

=begin
Write a Ruby program to compute the sum of elements in a given array
=end

def find_cart_value(products)
    _total_price = 0
    products.each {
        |product|
        _total_price = _total_price + product
    }
    return _total_price
end
products = [10, 13, 23]
puts find_cart_value(products)

=begin
Write a Ruby program to remove duplicate elements from an given array.
=end

products = [ "Alexa Device", "Gym Kit", "LED TV Samsung", "Alexa Device" ]
def refine_cart(products)
    return products.uniq
end
puts "================"
puts products
puts "================"
products = refine_cart(products)
puts products
puts "================"
    
=begin
Write a Ruby program to check two given arrays of integers and 
test if they have the same first element or they have the same last element. 
Both arrays length must be 1 or more.
=end

def check_carts(products_basket1, products_basket2)
    if products_basket1.size == 0 || products_basket2.size == 0
        return false
    end
    if products_basket1.first != products_basket2.first
        return false
    end
    if products_basket1.last != products_basket2.last
        return false
    end
    return true
end

sample_1_basket_1 = ["Alexa Device", "Redmi Pro 5", "Philips TV"]
sample_1_basket_2 = ["Alexa Device", "Paneer", "Cheese", "Philips TV"]

puts check_carts(sample_1_basket_1, sample_1_basket_2)

sample_1_basket_1 = ["Alexa Device", "Redmi Pro 5", "Philips Sound System"]
sample_1_basket_2 = ["Alexa Device", "Paneer", "Cheese", "Philips TV"]

puts check_carts(sample_1_basket_1, sample_1_basket_2)

puts "================"
=begin
Write a Ruby program to remove blank elements from an given array
=end

def refine_cart(products)
    products = products.reject {
        |product| product.empty?
    }
    return products
end

products = ["Alexa Device", "", "Redmi Pro 5", "Philips Sound System"]
puts refine_cart(products)

=begin
Write a Ruby program to split a delimited string into an array
=end

def segregate_cart(products)
    segregated_products = products.split(';')
    items = segregated_products[0]
    prices = segregated_products[1]
    items = items.split(',').map { |item| item.strip() }
    prices = prices.split(',').map { |price| price.to_i }
    puts "Items: #{items}"
    puts "Prices: #{prices}"
end

products = "Alexa device, Redmi Pro 5, Philips Sound System;50, 200, 400"
segregate_cart(products)