# script that takes an integer input from the cmd line
# and outputs wether it is positive or negative

print "Input an integer: "
num = Integer(gets.chomp)

if num > 0
    puts "Your number is bigger than 0."
elsif num < 0
    puts "Your number is smaller than 0."
else
    puts "Your number is equal to 0."
end
