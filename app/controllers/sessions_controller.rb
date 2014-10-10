class SessionsController < ApplicationController
 

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
       sign_in user
       redirect_back_or user
    else
       render 'new'
       flash.now[:error] = 'Invalid email/password combination'
    end
  end
  
  def destroy
    session[:user_id] = nil
    sign_out
    redirect_to root_path
  end
end
