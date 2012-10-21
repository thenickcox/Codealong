require 'spec_helper'

describe User do
  describe "validations" do
    describe "for #user_type" do
      it "should accept a valid user type" do
        u = User.new email: 'test@test.com', name: 'Test Name', password_digest: '1234', username: 'testuser', user_type: 'developer'

        u.valid?.should eq true
      end

      it "should reject an invalid user type" do
        u = User.new email: 'test@test.com', name: 'Test Name', password_digest: '1234', username: 'testuser', user_type: 'magician'

        u.valid?.should eq false
      end
    end
  end
end
