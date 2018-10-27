class FeedController < ApplicationController
    def events
	     @events = CpdEvent.all
    end

    def modules
	@modules =  UnitModule.all
    end
end
