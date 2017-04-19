class HelloController < ApplicationController

  #Will look into the application layout 
  #otherwise will look into the hello layout
  #layout "application"

  #renders a layout depending on the admin_or_user method
  layout :admin_or_user

  #renders application layout except when rss is requested
  #layout "application", except: :rss
  #renders application layout except when rss, xml or text is requested
  #layout "application", except: [:rss, :xml, :text_only]
  #renders application layout only with html
  #layout "application", only: :html

  def index
  	@message = "Hello!"
  	@count = 3
  	@bonus = "This message came from the controller"
  end

  def admin_or_user
    if true
    	"hello"
      #"admin_screen"
    else
    	"application"
      #"user_screen"
    end
  end
end
