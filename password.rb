

class PasswordChecker
  attr_reader :password
  attr_accessor :error
  
  def initialize(password)
    @password = password
    @error
  end

  def valid?
    if @password.length < 8
      @error = "Password too short!"
      false
    elsif !@password.match?(/[A-Z]/)
      @error =  "Password must contain capital letter!"
      false
    elsif !@password.match?(/[a-z]/)
      @error =  "Password must contain a lowercase letter!"
      false
    elsif !@password.match?(/[0-9]/)
      @error =  "Password must conain a number!"
      false
    elsif !@password.match(/[*_*]/)
      @error =  "Password must contain an underscore!"
      false
    else
      true
    end
  end
end


