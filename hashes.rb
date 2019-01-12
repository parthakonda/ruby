=begin
Understanding hashes (dictionaries)
=end

# Defining Hash
employess = {
    "name" => "Partha",
    "designation" => "Senior Software Engineer",
    "company" => "Inmar, Inc"
}

# iterating Hash
employess.each do |key, value|
    puts "Key: #{key} => #{value}"
end


# Nested hashes

employess = {
    "name" => "Partha",
    "designation" => "Senior Software Engineer",
    "company" => {
        "name" => "Inmar, Inc",
        "location" => "Hyderabad"
    }
}

employess.each do |key, value|
    puts "Key: #{key} => #{value}"
    if value.class == Hash
        puts "Keys: #{value.keys}"
    end
end

# Creating Hashes (the other way)
movie = Hash.new
# Accessing keys
movie['name'] = 'Wanted'
puts "#{movie}"

# Hash with default keys & values
movie = Hash.new('<Placeholder>')
puts "#{movie['Wanted']}"

# Other syntax to create hashes

movie = Hash["name" => "Wanted", "relese_date" => 2010]
puts "#{movie}"