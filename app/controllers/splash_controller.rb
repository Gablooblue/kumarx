class SplashController < ApplicationController
  def index
      if user_signed_in?
	  redirect_to event_feed_path 
      end
  end
end
