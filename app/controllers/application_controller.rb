class ApplicationController < ActionController::Base
  protect_from_forgery

  private
    def current_expensescounter
      Expensescounter.find(session[:expensescounter_id])
    rescue ActiveRecord::RecordNotFound
       expensescounter = Expensescounter.create
       session[:expensescounter_id] = expensescounter.id
       expensescounter
    end
end
