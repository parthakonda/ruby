=begin
Understanding conditional statement such as
if..else, case, unless
@author: Partha Saradhi Konda
=end

marks = 22

if marks < 18 and marks > 0
    puts "failed"
elsif marks > 17 and marks < 35
    puts "passed"
elsif marks > 34 and marks < 75
    puts "first class"
elsif marks > 74 and marks <= 100
    puts "Distinction"
else
    puts "Invalid marks"
end

unless marks > 0 and marks < 100
    puts "Invalid marks"
end

y = 10 if marks < 23
puts y if defined? y

case marks
when 0..18
    puts "failed"
when 19..35
    puts "passed"
when 36..75
    puts "first class"
when 76..100
    puts "Distinction"
else
    puts "Invalid marks"
end