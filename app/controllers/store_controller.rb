class StoreController < ApplicationController
  def index
    @quantities = Quantity.order(:title)
  end
end
