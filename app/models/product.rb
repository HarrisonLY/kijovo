class Product < ActiveRecord::Base

	# def TBD?
	#	price.blank? || price = TBD
	# end

	def self.upcoming
		where("releasing_on >= ?", Time.now).order("releasing_on").order("name")
	end

end
