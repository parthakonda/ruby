=begin
understanding loops
@author: Partha Saradhi Konda
=end

# while
$var = 10

while $var < 13
    puts "$var => #{$var}"
    $var+= 1
end

# while modifier
$source = 0
$expected = 10

begin
    puts "$source = #{$source}"
    $source += 1
end while $source < $expected


# until
$source = 0
$expected = 10
until $source > $expected
    puts "$source = #{$source}"
    $source += 1
end

# until modifier
$source = 0
$expected = 10

begin
    puts "$source = #{$source}"
    $source += 1
end until $source > $expected



# for loop
for i in (0..10)
    puts "i = #{i}"
end

products = [ 1, 2, 3, 4, 5]

for item in products
    puts("item = #{item}")
end

cart = ["Headphone Sony", "Water purifier"]

for product in cart
    puts("#{product}")
end

(0..10).each {
    |i| 
    puts("i = #{i}")
}


(0..10).each do |i|
    puts "i = #{i}"
end