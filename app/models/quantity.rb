class Quantity < ActiveRecord::Base
  attr_accessible :price, :title, :day, :month, :year
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
      find(:all, :conditions => ['month LIKE ?', "%#{search}%"])
    else
     find(:all)
   end
 end
end

