=begin
Understanding begin end
@author: Partha Saradhi Konda
=end
puts "This is first line of the program"

BEGIN {
    puts "This is start block"
}

puts "Its inside"

END {
    puts "End of the block"
}