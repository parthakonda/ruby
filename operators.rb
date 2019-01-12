=begin
Understanding operators
=end


# Arithmetic
=begin
+ => add
- => subtract
* => multiply
/ => division
% => modulus
** => exponent
=end

a = 10
b = 20

puts "#{a} + #{b} => #{a + b}"
puts "#{a} / #{b} => #{a / b}"
puts "#{a} * #{b} => #{a * b}"
puts "#{a} / #{b} => #{a / b}"
puts "#{a} % #{b} => #{a % b}"
puts "#{a} ** #{b} => #{a ** b}"

# Comparision operators
=begin
== => equal operator
!= => opp to equal
> => greater than
< => less than
>= => greather than or equal to
<= => less than or equal to
<=> => combined operator, 0 - equal, 1 - left is high, -1 - right is high
=== => equality operator (useful in case switch)
.eq? => same types and same values
.eqaul? =? same object id
=end

puts "#{a} == #{b} => #{a == b}"
puts "#{a} != #{b} => #{a != b}"
puts "#{a} > #{b} => #{a > b}"
puts "#{a} < #{b} => #{a < b}"
puts "#{a} >= #{b} => #{a >= b}"
puts "#{a} <= #{b} => #{a <= b}"
puts "#{a} <=> #{b} => #{a <=> b}"
puts "#{a} === #{b} => #{a === b}"
puts "#{a} .eql? #{b} => #{a.eql? b}"
puts "#{a} .equal? #{b} => #{a.equal? b}"


# Assignment Operators
=begin
= => right to left assignment
+= => add AND assign
-= => subtract AND assign
*= => multiply AND assign
/= => divide AND assign
%= => modulus AND assign
** => exponent AND assign
=end

c = a + b
puts "c = a + b => #{c}"
c += a
puts "c += a => #{c}"
c -= 1
puts "c -= 1 => #{c}"
c *= 2
puts "c *= 2 => #{c}"
c /= 2
puts "c /= 2 => #{c}"
c %= 2
puts "c %= 2 => #{c}"
c **= 2
puts "c **= 2 => #{c}"


# Parellel assignment
a, b, c = 1, 2, 3
puts "a => #{a}, b => #{b}, c => #{c}"
a, b = b, a
puts "a => #{a}, b => #{b}"

# bitwise operators
a = 60
b = 13

puts "a&b => #{a&b}"
puts "a|b => #{a|b}"
puts "a^b => #{a^b}"
puts "a<<b => #{a<<2}"
puts "a>>b => #{a>>2}"


# Logical operators
=begin
and => logical AND
or => logical OR
&& => true if both are non zero
|| => true if anyone of the operand is non zero
! => reverse the state !true = false, !false = true
not => reverse the state 
=end

a = true
b = false

c = 10
d = 3

puts "#{a} and #{b} => #{a and b}"
puts "#{a} && #{b} => #{a && b}"
puts "#{c} and #{d} => #{c and d}"
puts "#{c} && #{d} => #{(c && d)}"
puts "! #{a} and #{b} => #{!(a and b)}"
puts "! #{a} and #{b} => #{not(a and b)}"


# Ternary operator
def non_zero(number)
    return number > 0 ? 'Non Zero' : 'Zero'
end
puts non_zero(10)
puts non_zero(0)
puts non_zero(-11)

# Range operator
(1..10).each do |number|
    puts "#{number}"
end

(1...10).each do |number|
    puts "#{number}"
end

# defined? operator
sample = 10
class MyClass

    def new_method
        puts "new method"
    end
end

object = MyClass.new

if defined? sample
    puts "sample is available"
end

if defined? object.unknown
    puts "sample is available"
end



# Module :: operator

MY_AWESOME_CONST = 0

module AwesomeModule
    MY_AWESOME_CONST = 1
    ::MY_AWESOME_CONST = 2 # Global
    MY_AWESOME_CONST = 3
end

puts MY_AWESOME_CONST
puts AwesomeModule::MY_AWESOME_CONST # Local of module