class Order < ApplicationRecord
	validates: name, presence: true

	has_many :order_item
end
