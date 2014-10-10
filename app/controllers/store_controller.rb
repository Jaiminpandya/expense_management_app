class StoreController < ApplicationController

  def index
    @quantities = Quantity.order(:title)
    @expensescounter = current_expensescounter
  end

  def report
  end
end
