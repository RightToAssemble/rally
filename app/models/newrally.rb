class Newrally < ActiveRecord::Base
	cattr_accessor :csearch
	if :validate_csearch?
		def self.search(citysearch)
			where("city LIKE ?", "%#{citysearch}%")
		end
	else
		def self.search(statesearch)
			where("state LIKE ?", "%#{countrysearch}%")
		end
	end

	private
	def validate_csearch?
		!self.csearch
	end

end