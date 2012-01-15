module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "The SBIC website "
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
 def logo
    image_tag("logo.jpg", :alt => "SBIC App", :class => "round")
  end
end


