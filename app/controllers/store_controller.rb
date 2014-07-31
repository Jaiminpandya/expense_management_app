class StoreController < ApplicationController

  def index
    @quantities = Quantity.order(:title)
  end

  def report
  end
 
  
end
