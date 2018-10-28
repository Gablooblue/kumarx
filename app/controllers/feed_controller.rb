class FeedController < ApplicationController
    def index
	@events = CpdEvent.limit(3)
	@modules =  UnitModule.limit(3)
    end
    def events
	@events = CpdEvent.limit(3)
    end

    def modules
	@modules =  UnitModule.limit(3)
    end
end
