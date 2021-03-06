class Quantity < ActiveRecord::Base
  attr_accessible :price, :title, :day, :month, :year, :expense_on
  has_many :line_items
  
  
  

  before_destroy :ensure_not_referenced_by_any_line_item

  validates :day, :month, :year, presence: true
  validates :title, presence: true, length: { minimum: 8, message: 'must be eight characters long.'}
  validates :title, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  
 

   scope :ordered, lambda { where("created_at <= ?", Time.now) }
   scope :recent, ordered.order("created_at desc")

   scope :day, lambda { where("day <= ?", 10.days.from_now )}
   scope :dailyreport, day.order("day desc")

   scope :month, lambda { where("month <= ?", 1.month.from_now )}
   scope :monthlyreport, day.order("month desc") 

   scope :year, lambda { where("year <= ?", 1.year.from_now )}
   scope :yearyreport, day.order("year desc")

 
  def self.search(search)
    if search
      find(:all, :conditions => ['expense_on LIKE ?', "%#{search}%"])
     else
       find(:all)
      end
   end

  
private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end


