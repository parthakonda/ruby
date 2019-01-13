=begin
Understanding iterators
@author: Partha Saradhi Konda
=end
products = ["Alexa Device", "RedMi Pro", "MacBook Pro", "Magic Mouse"]

products.each do |product|
    puts "#{product}"
end

employess = {
    "name" => "Partha",
    "designation" => "Senior Software Engineer",
    "company" => {
        "name" => "Inmar, Inc",
        "location" => "Hyderabad"
    }
}

employess.each do |key, value|
    puts "#{key} => #{value}"
end

new_employees = employess.collect{
    |x|
    x
}

puts "#{new_employees}"