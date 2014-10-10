class ExpensescountersController < ApplicationController
  before_filter :signed_in_user
  
  # GET /expensescounters
  # GET /expensescounters.json
  def index
    @expensescounters = Expensescounter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @expensescounters }
    end
  end

  # GET /expensescounters/1
  # GET /expensescounters/1.json
  def show
  begin
    @expensescounter = Expensescounter.find(params[:id])
   rescue ActiveRecord::RecordNotFound
       logger.error "Attempt to access invalid cart #{params[:id]}"
       redirect_to store_url, notice: 'Invalid cart'
   else
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @expensescounter }
    end
  end
 end

  # GET /expensescounters/new
  # GET /expensescounters/new.json
  def new

    @expensescounter = Expensescounter.new(params[:expensescounter])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @expensescounter }
    end
  end

  # GET /expensescounters/1/edit
  def edit
    @expensescounter = Expensescounter.find(params[:id])
  end

  # POST /expensescounters
  # POST /expensescounters.json
  def create
     @expensescounter = current_user.expensescounters.build(params[:expensescounter])
     
    respond_to do |format|
      if @expensescounter.save
        format.html { redirect_to root_url, notice: 'Expensescounter was successfully created.' }
        format.json { render json: @expensescounter, status: :created, location: @expensescounter }
      else
        
        format.html { render action: "/" }
        format.json { render json: @expensescounter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /expensescounters/1
  # PUT /expensescounters/1.json
  def update
    @expensescounter = Expensescounter.find(params[:id])

    respond_to do |format|
      if @expensescounter.update_attributes(params[:expensescounter])
        format.html { redirect_to @expensescounter, notice: 'Expensescounter was successfully updated.' }
        format.json { head :no_content }
      else
            
        format.html { render action: "edit" }
        format.json { render json: @expensescounter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expensescounters/1
  # DELETE /expensescounters/1.json
  def destroy
    @expensescounter = current_expensescounter
    @expensescounter.destroy
    session[:expensescounter_id] = nil

    respond_to do |format|
      format.html { redirect_to store_url, notice: 'Your cart is currently empty' }
      format.json { head :no_content }
    end
  end

  private

    def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
  
   def correct_user
      @expensescounter = current_user.expensescounters.find_by_id(params[:id])
      redirect_to root_url if @expensescounter.nil?
   end
end
