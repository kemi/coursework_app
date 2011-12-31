require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'enquiry_service'" do
    it "should be successful" do
      get 'enquiry_service'
      response.should be_success
    end
  end

  describe "GET 'services_support'" do
    it "should be successful" do
      get 'services_support'
      response.should be_success
    end
  end

  describe "GET 'information_advice'" do
    it "should be successful" do
      get 'information_advice'
      response.should be_success
    end
  end

  describe "GET 'recording_tools'" do
    it "should be successful" do
      get 'recording_tools'
      response.should be_success
    end
  end

  describe "GET 'submit_your_sightings'" do
    it "should be successful" do
      get 'submit_your_sightings'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

end
