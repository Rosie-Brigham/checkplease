require "./password"

puts "Please type in your password"

password = gets.chomp

checker = PasswordChecker.new(password)

if checker.valid?
  puts "well done! you did a good password"
else
  puts "Oh no, there was something wrong: " + checker.error
end