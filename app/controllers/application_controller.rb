class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  private
    def current_expensescounter
      logger.info "expensescounter_id is #{(session[:expensescounter_id])}"
      Expensescounter.find(session[:expensescounter_id])
       rescue ActiveRecord::RecordNotFound
       expensescounter = Expensescounter.create
       session[:expensescounter_id] = expensescounter.id
       expensescounter
      end

     
 end

