class SplashController < ApplicationController
  def index
      if user_signed_in?
	  redirect_to feed_path 
      end
  end
end
