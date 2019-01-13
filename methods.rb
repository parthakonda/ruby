=begin
Understanding methods
=end

# Simple method
def my_simple_method
    puts "I'm a simple method"
end
my_simple_method

# Parameterized method
def parameterized_method(param)
    puts "Guess what? I can read param #{param}"
end
parameterized_method "Partha" "Saradhi"
parameterized_method("Partha")

# Parameters with default values
def default_param_values_method(param1=nil, param2='default')
    puts "Got param1 = #{param1}"
    puts "Got param2 = #{param2}"
end
default_param_values_method 'Test', nil

# Returning value
def return_somethig
    a = 10
    b = 20
    c = a, b
end
returned_value = return_somethig
puts returned_value

# Varable no of args
def dynamic_args_method(*args)
    for i in args
        puts "args = #{i}"
    end
    args.each do |arg|
        puts "args = #{arg}"
    end
end
dynamic_args_method 1, 2, 3
