require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "should have a Enquiry Service page at '/enquiry_service'" do
    get '/enquiry_service'
    response.should have_selector('title', :content => "Enquiry Service")
  end
it "should have a Services and Support page at '/services_support'" do
    get '/services_support'
    response.should have_selector('title', :content => "Services and Support")
  end
it "should have a Recording Tools page at '/recoding_tools'" do
    get '/recording_tools'
    response.should have_selector('title', :content => "Recording Tools")
  end
it "should have a Submit your sightings page at '/submit_your_sightings'" do
    get '/submit_your_sightings'
    response.should have_selector('title', :content => "Submit your Sightings")
  end
 it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
end
describe "when not signed in" do
    it "should have a signin link" do
      visit root_path
      response.should have_selector("a", :href => signin_path,
                                         :content => "Sign in")
    end
  end

  describe "when signed in" do

    before(:each) do
      @user = Factory(:user)
      visit signin_path
      fill_in :email,    :with => @user.email
      fill_in :password, :with => @user.password
      click_button
    end

    it "should have a signout link" do
      visit root_path
      response.should have_selector("a", :href => signout_path,
                                         :content => "Sign out")
    end

    it "should have a profile link" do
      visit root_path
      response.should have_selector("a", :href => user_path(@user),
                                         :content => "Profile")
  end
end
end

