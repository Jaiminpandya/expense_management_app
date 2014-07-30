class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update, :destroy]
  before_filter :correct_user, only: [:edit, :update]


  def new
    @user = User.new
  end

 def show
    @user = User.find(params[:id])

     respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

   def create
    @user = User.new(params[:user])
    respond_to do |format|
    if @user.save
       format.html { redirect_to @user,
          notice: "User #{@user.name} was successfully created." }
       format.json { render json: @user,
          status: :created, location: @user }
    else
       format.html { render action: "new" }
       format.json { render json: @user.errors, status: :unprocessable_entity }
     end
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
     
    respond_to do |format|
       if @user.update_attributes(params[:user])
         format.html { redirect_to @user,
           notice: "User #{@user.name} was successfully updated." }
         format.json { head :no_content }
       else
        format.html { render action: "edit" }
        format.json { render json: @user.errors,
           status: :unprocessable_entity }
     end
    end
  end

   def destroy
    @user = User.find(params[:id])
    begin
      @user.destroy
      flash[:notice] = "User #{@user.name} deleted"
    rescue Exception => e
      flash[:notice] = e.message
    end
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

 
  private
  
    def signed_in_user
      unless User.find_by_id(session[:user_id])
        store_location
        redirect_to signin_path, notice: "Please sign in." 
      end
    end

    def corrent_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
end
