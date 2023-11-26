# Requirements:
# Have more than 8 characters
# Contains a capital letter
# Contains a lowercase
# Contains a number
# Contains an underscore
require './password'

RSpec.describe PasswordChecker, "#valid?" do
  context "Password has less than 8 characters" do
     it "returns false" do
      password = PasswordChecker.new("1Fok_kj")
      expect(password.valid?).to eq false
    end
  end

  context "Password does not contain a capital letter" do
    it "returns false" do
      password = PasswordChecker.new("1fok_kjldlw")
      expect(password.valid?).to eq false
    end
  end

  context "Password does not contain any lower case letters" do
    it "returns false" do
      password = PasswordChecker.new("1FOK_HDGJG")
      expect(password.valid?).to eq false
    end
  end

  context "Password does not contain a number" do
    it "returns false" do
      password = PasswordChecker.new("sFok_ksdj")
      expect(password.valid?).to eq false
    end
  end

  context "Password does not contain a underscore" do
    it "returns false" do
      password = PasswordChecker.new("1Fokskjsd")
      expect(password.valid?).to eq false
    end
  end


  context "Password contains correct requirements" do
    it "returns true" do
      password = PasswordChecker.new("1Fok_kjsa")
      expect(password.valid?).to eq true
    end
  end
end