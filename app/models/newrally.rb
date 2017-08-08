class Newrally < ActiveRecord::Base

	def self.search(search)
		where("city LIKE ?", "%#{search}%")
	end
end