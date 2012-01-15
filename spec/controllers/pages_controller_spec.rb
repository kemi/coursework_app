require 'spec_helper'

describe PagesController do
 render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
   
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
 
  end
describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
  end
describe "GET 'enquiry_service'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
     
  end
describe "GET 'recording_tools'" do
    it "should be successful" do
      get 'recording_tools'
      response.should be_success
    end
     
  end
describe "GET 'services_support'" do
    it "should be successful" do
      get 'services_support'
      response.should be_success
    end
     
  end
describe "GET 'submit_your_sightings'" do
    it "should be successful" do
      get 'species'
      response.should be_success
    end
     
  end
end
