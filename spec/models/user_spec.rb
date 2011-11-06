require 'spec_helper'

describe User do
  describe "email_exists?" do
    it "should not error" do
      lambda {
        User.email_exists?(FactoryGirl.generate(:email))
      }.should_not raise_error
    end
    
    it "should raise error" do
      lambda {
        User.email_exists?()
      }.should raise_error
    end
    
    it "should return false" do
      User.email_exists?(FactoryGirl.generate(:email)).should eql false
    end
    
    it "should return true if exists" do
      User.stub!(:find_by_email).and_return([User.new])
      User.email_exists?(FactoryGirl.generate(:email)).should eql true
    end
  end
  
  describe "create_by_device" do
    describe "with required fields" do
      it "should create the user" do
        lambda {
          @user = User.create_by_device("device_id", true, FactoryGirl.generate(:email))
        }.should change(User, :count).by(1)
        Device.count.should eql(1)
        @user.devices.count.should eql(1)
        @user.devices.first.should be_activated
      end
    end
  end
  
  describe "user accepted terms" do
    it "should require true for terms" do
      user = Factory(:user)
      user.should be_valid
      user.terms = false
      user.should_not be_valid
    end
  end
end
