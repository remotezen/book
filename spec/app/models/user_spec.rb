require 'spec_helper'
describe "User Model" do
  let(:user){build(:user) }
  it 'can be created' do
    user.should_not be_nil
  end 
  it 'fresh user should have no offer' do
    user.jobs.size.should == 0
  end
  it 'have job-offers' do
    user.jobs.build(FactoryGirl.attributes_for(:job))
    user.jobs.size.should == 1
  end
end

