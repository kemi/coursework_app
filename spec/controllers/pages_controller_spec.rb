require 'spec_helper'

describe PagesController do
 render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                    :content => "Ruby on Rails Tutorial SIBC App | Home")
end  
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
 it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                        :content =>
                          "Ruby on Rails Tutorial SIBC App | Contact")
    end
  end
describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
     it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                        :content =>
                          "Ruby on Rails Tutorial SIBC App | About")
    end
  end
describe "GET 'enquiry_service'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
     it "should have the right title" do
      get 'enquiry_service'
      response.should have_selector("title",
                        :content =>
                          "Ruby on Rails Tutorial SIBC App | Enquiry Service")
    end
  end
describe "GET 'recording_tools'" do
    it "should be successful" do
      get 'recording_tools'
      response.should be_success
    end
     it "should have the right title" do
      get 'recording_tools'
      response.should have_selector("title",
                        :content =>
                          "Ruby on Rails Tutorial SIBC App | Recording Tools")
    end
  end
describe "GET 'services_support'" do
    it "should be successful" do
      get 'services_support'
      response.should be_success
    end
     it "should have the right title" do
      get 'services_support'
      response.should have_selector("title",
                        :content =>
                          "Ruby on Rails Tutorial SIBC App | Services and support")
    end
  end
describe "GET 'submit_your_sightings'" do
    it "should be successful" do
      get 'submit_your_sightings'
      response.should be_success
    end
     it "should have the right title" do
      get 'submit_your_sightings'
      response.should have_selector("title",
                        :content =>
                          "Ruby on Rails Tutorial SIBC App | Submit your Sightings")
    end
  end
end
