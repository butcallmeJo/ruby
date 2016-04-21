# Ask for the user's first name
print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

# Ask for the user's last name
print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

# Ask for the user's birth city
print "What city were you born in?"
city = gets.chomp
city.capitalize!

# Ask for the user's bith state
print "What state were you born in?"
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you were born in #{city}, #{state}!"
