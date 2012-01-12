require 'spec_helper'

describe SpeciesController do
render_views

  describe "access control" do

    it "should deny access to 'create'" do
      post :create
      response.should redirect_to(signin_path)
    end

    it "should deny access to 'destroy'" do
      delete :destroy, :id => 1
      response.should redirect_to(signin_path)
    end
  end
describe "POST 'create'" do

    before(:each) do
      @user = test_sign_in(Factory(:user))
    end

    describe "failure" do

      before(:each) do
        @attr = { :content => "" }
      end

      it "should not create a specie" do
        lambda do
          post :create, :specie => @attr
        end.should_not change(specie, :count)
      end

      it "should render the submit_your_sightings page" do
        post :create, :specie => @attr
        response.should render_template('pages/submit_your_sightings')
      end
    end

    describe "success" do

      before(:each) do
        @attr = { :specie_name => "value for content",
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

      it "should create a specie" do
        lambda do
          post :create, :specie => @attr
        end.should change(specie, :count).by(1)
      end

      it "should redirect to the submit_your_sightings page" do
        post :create, :specie => @attr
        response.should redirect_to(root_path)
      end

      it "should have a flash message" do
        post :create, :specie => @attr
        flash[:success].should =~ /specie created/i
      end
    end
  describe "DELETE 'destroy'" do

    describe "for an unauthorized user" do

      before(:each) do
        @user = Factory(:user)
        wrong_user = Factory(:user, :email => Factory.next(:email))
        test_sign_in(wrong_user)
        @specie = Factory(:specie, :user => @user)
      end

      it "should deny access" do
        delete :destroy, :id => @specie
        response.should redirect_to(root_path)
      end
    end

    describe "for an authorized user" do

      before(:each) do
        @user = test_sign_in(Factory(:user))
        @specie = Factory(:specie, :user => @user)
      end

      it "should destroy the micropost" do
        lambda do 
          delete :destroy, :id => @specie
        end.should change(Specie, :count).by(-1)
      end
    end
  end


