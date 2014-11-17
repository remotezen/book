require 'spec_helper'

describe "User Model" do
  before do
    @user = FactoryGirl.create(:user)
  
  end
  
  
  describe "basic tests" do
    
    it 'can be created' do
      @user.should_not be_nil
    end 
    
    it 'fresh user should have no offer' do
      @user.jobs.size.should == 0
    end

  end
  
  describe "pending" do
    pending('no blank name')
    pending('no blank email')

  end
  describe "job offers" do
    let(:user){ build(:user) }
    it 'have job-offers' do
      user.jobs.build(FactoryGirl.attributes_for(:job))
      user.jobs.size.should == 1
    end
  end
  
  describe"passwords" do
    pending('no blank password')
    pending('no blank password confirmation')
  end
  
  
  
  describe "email address" do
    let(:user){build(:user)}
    let(:user_second){build(:user)}
    
    it "should not be blank" do
      user.email = " "
      user.save.should == false 
    end
    it "should be unique" do
      user_second.name = "Unique Name"
      user_second.email = user.email
      user_second.save.should == false 
    end
     it 'valid' do
      addresses = %w[fred@yahoo.com bob@marvel.org]
      addresses.each do |e|
        user_second.email=e
        user_second.name =e
        expect(user_second).to be_valid
      end
     end
      it 'not valid' do
        addresses = %w[fred,yahoo.com bob@marve,org]
        addresses.each do |e|
          user_second.email = e
          user_second.name = e
          expect(user_second).to_not be_valid

        end
    end
  end
  
  describe "When name is already used" do
    let(:user){ build(:user) }
    let(:user_second){ build(:user) }

    it "should not be saved" do
      user_second.email == "Uniqure@unique.com"
      user_second.save.should == false
    end
  
  end
  describe "password validations" do
    it "not blank" do
      let(:user){ build(:user) }

    end
  end

end

