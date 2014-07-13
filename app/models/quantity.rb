class Quantity < ActiveRecord::Base
  attr_accessible :price, :title
  validates :title, presence: true, length: { minimum: 8, message: 'must be eight characters long.'}
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true 
end
