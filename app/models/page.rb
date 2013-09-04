class Page < ActiveRecord::Base
	
	def to_param
    	unique
  	end
  	
end
