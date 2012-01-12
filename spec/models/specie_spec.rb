require 'spec_helper'

describe specie do

  before(:each) do
     @user = Factory(:user)
    @attr = {
      :specie_name => "value for content",
      :sex => "value for content",
      :location => "value for content",
      :county=> "value for content",
      :origin => "value for content",
      :Quantity=> "value for content",
      :observer=> "value for content",
      :record_type => "value for content",
      :grid_reference => "value for content",
      :start_date => "value for content",
      :end_date=> "value for content",
      :determiner=> "value for content",
      :comment => "value for content",
      :reference => "value for content",
    }
  end

  it "should create a new instance given valid attributes" do
    specie.create!(@attr)
  end
   describe "user associations" do

    before(:each) do
      @specie = @user.microposts.create(@attr)
    end

    it "should have a user attribute" do
      @specie.should respond_to(:user)
    end

    it "should have the right associated user" do
      @specie.user_id.should == @user.id
      @specie.user.should == @user
    end
  end
describe "validations" do

    it "should require a user id" do
      specie.new(@attr).should_not be_valid
    end

    it "should require nonblank content" do
      @user.species.build(:content => "  ").should_not be_valid
    end

    it "should reject long content" do
      @user.species.build(:content => "a" * 141).should_not be_valid
    end
  end
end


