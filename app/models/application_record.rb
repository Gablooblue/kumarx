class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
    def get_image 
	if self.image.url.present?
	    self.image.url
	else
	    "default.png"
	end
    end
end
