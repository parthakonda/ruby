=begin
Understanding ranges
=end

# Ranges as sequences
incremental_numbers = (10..15)
puts "Incremental Number: #{incremental_numbers}"

incremental_numbers.each do |number| 
    puts "Number: #{number}"
end

# Ranges as conditions
score = 70
results = case score
when 0..49 then "Fail"
when 50..70 then "Pass"
when 70..100 then "Awesome"
else "Invalid score"
end
puts results

# Ranges as intervals
if ((0..10) === 5)
    puts "5 Lies in (1..10)"
end

if (('a'..'j') === 'c')
    puts "c lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
    puts "z lies in ('a'..'j')"
end