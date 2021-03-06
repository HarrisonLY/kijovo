class Product < ActiveRecord::Base

	validates :name, presence: true

	validates :description, length: {maximum: 200}

	validates :image_file_name, allow_blank: true, format: {
 	 with:    /\w+.(gif|jpg|png)\z/i,
 	 message: "must reference a GIF, JPG, or PNG image"
	}

  
  INDUSTRY = %w(Cars Sneakers Test)

  validates :industry, inclusion: { in: INDUSTRY }


	def tbd?
		price.blank? || price.zero? 
	end

	def self.upcoming
		where("releasing_on >= ?", Time.now).order("releasing_on").order("name")
	end

end
