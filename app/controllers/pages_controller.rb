class PagesController < ApplicationController
  def home
   @title = "Home"
  end

  def enquiry_service
     @title = "Enquiry Service"
  end

  def services_support
     @title = "Services and support"
  end

  def information_advice
     @title = "Information and advice"
  end

  def recording_tools
     @title = "Recording Tools"
  end

  def submit_your_sightings
     @title = "Submit your sightings"
  end

  def about
     @title = "About"
  end

  def contact
     @title = "Contact"
  end

end
