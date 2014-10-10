class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:show, :index, :edit, :update, :destroy]
  before_filter :correct_user, only: [:show, :edit, :update]
 
  def show
    @user = User.find(params[:id])
    @expensescounter = @user.expensescounters.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end


   def create
    @user = User.new(params[:user])

    respond_to do |format|
    if @user.save
       
       format.html { redirect_to users_path,
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
      @user = User.find(params[:id])
   end

 

  def update
    @user = User.find(params[:id])
     
    respond_to do |format|
       if @user.update_attributes(params[:user])
         format.html { redirect_to @user,
           notice: "User #{@user.name} was successfully updated." }
         sign_in @user
         format.json { head :no_content }
         
       else
        format.html { render action: "edit" }
        format.json { render json: @user.errors,
           status: :unprocessable_entity }
     end
    end
  end

   def destroy
      User.find(params[:id]).destroy
      flash[:success] = "User destroyed."
      redirect_to users_url
   end

 
  private

    
 
    def signed_in_user
     unless signed_in?
        store_location
        redirect_to signin_path, notice: "Please sign in." 
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
      
end
