class PagesController < ApplicationController
  def home
   @title = "Home"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end
  
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
  def help
     @title = "Help"
   end
def News
     @title = "News"
   end
def FAQ
     @title = "FAQ"
   end
def Vacancies
     @title = "Vacancies"
   end
def Usefullinks
     @title = "Useful Links"
   end
def Terms
     @title = "Terms and Conditions"
   end





end
