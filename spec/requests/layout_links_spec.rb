layout_links_spec.rb/request


require 'spec_helper'

describe "LayoutLinks" do
  #describe "GET /layout_links" do
   # it "works! (now write some real specs)" do
 #     # Run the generator again with the --webrat flag if you want to use #webrat methods/matchers
  #    get layout_links_index_path
   #   response.status.should be(200)
    
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact Us")
  end

  it "should have an about page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About Us")
  end

  it "should have a submit your sightings page at '/submit_your_sightings'" do
    get '/submit_your_sightings'
    response.should have_selector('title', :content => "Submit your sightings")
  end

  it "should have a news page at '/news'" do
    get '/news'
    response.should have_selector('title', :content => "News and Upcoming Events")
  end

 it "should have a surveys page at '/surveys'" do
    get '/surveys'
    response.should have_selector('title', :content => "Current Surveys")
  end

 it "should have an enquiry page at '/enquiry'" do
    get '/enquiry'
    response.should have_selector('title', :content => "Enquiry services")
  end

  it "should have a recording page at '/recording'" do
    get '/recording'
    response.should have_selector('title', :content => "Recording Tools")
  end

  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
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
