# def check_password(password)
#   if password.length < 8
#     puts "Password too short!"
#   elsif !password.match?(/[A-Z]/)
#     puts "Password must contain capital letter!"
#   elsif !password.match?(/[a-z]/)
#     puts "Password must contain a lowercase letter!"
#   elsif !password.match?(/[0-9]/)
#     puts "Password must conain a number!"
#   elsif !password.match(/[*_*]/)
#     puts "Password must contain an underscore!"
#   else
#     puts "Password is acceptable, please continue"
#   end
# end