class FoodItem < ApplicationRecord
	validates :food_items, :section, :price, presence: true

	def image_url
		if remote_image_url.present?
			remote_image_url
		else
			"http://loremflickr.com/320/240/#{CGI.escape name}"
   end
 end
   def self.search(search)
  		where("name LIKE ?", "%#{search}%") 
  end
    
end