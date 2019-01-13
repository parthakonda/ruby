=begin
Understanding blocks
@author: Partha Saradhi Konda
=end
def test(task='Task Name')
    puts "Building task #{task}"
    yield
    puts "Completing task #{task}"
end

# Creating Block
test 'Deploy WebServer' do
    puts "You are in the block"
end

# Creating Block (the other way)
test('Deploy WebServer') {
    puts "You are in the block"
}

# Passing parameters to blocks
def test(task='Default')
    puts "Calling task #{task}"
    yield "Dev", "Qa", "Staging"
    puts "Finishing task #{task}"     
end

test "Deploy UAT" do |args|
    puts "I'm a bot and can deploy into #{args}"
end

test("Deploy UAT") {
    |args|
    puts "I'm a bot and can deploy into #{args}"
}

# Reading blocks inside the definition
def test(x, &block)
    val = block.()
    puts val
end
test 'test' do 
    10
end
