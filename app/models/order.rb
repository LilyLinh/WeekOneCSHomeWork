class Order < ApplicationRecord
	validates :name, presence: true

	has_many :order_items

	def total_price
		order_items.map{|e| e.food_item.price}.sum
	end

	def self.last_pending
		where(confirm_at: nil).last
end
end