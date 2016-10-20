class OrderItem < ApplicationRecord
  belongs_to :food_item
  belongs_to :order

  validates :food_item, :order, presence: true

  def self.quantity
    current_scope.map(&:quantity).sum
  end

end
