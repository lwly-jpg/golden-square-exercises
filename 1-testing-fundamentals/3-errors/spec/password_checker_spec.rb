require 'password_checker'

describe PasswordChecker do
  context "when password length is less than 8 chars" do
    it "fails" do
      input = PasswordChecker.new
      expect { input.check("seven") }.to raise_error "Invalid password, must be 8+ characters."
    end

    it "fails" do
      input = PasswordChecker.new
      expect { input.check("tree") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end

  context "when password length is 8 chars or more" do
    it "passes" do
      input = PasswordChecker.new
      result = input.check("23891287")
      expect(result).to eq true
    end

    it "passes" do
      input = PasswordChecker.new
      result = input.check("kjsdhskjhkjashdqwhh")
      expect(result).to eq true
    end
  end
end
