class RestsController < ApplicationController
  before_filter :authenticate_employe!, only: [:index, :show, :update, :destroy, :create, :new]
  before_action :set_rest, only: [:show, :edit, :update, :destroy]

 
  def index
      @rests = Rest.all
      @employes= Employe.all
      @employe =  Employe.find_by_id(params[:employe]) 
      @rests  = current_employe.rests 
  end
 
  def show
  end
 
  def new
      @rest = Rest.new
  end

 
  def edit
  end

  def create
      @rest = Rest.new(rest_params)
      @rest.employe_id = current_employe.id
      respond_to do |format|
      @rest.status = "pending"
      if @rest.save
      gflash :success =>"Rest was successfully created."
        format.html { redirect_to @rest, notice: 'Rest was successfully created.' }
        format.json { render :show, status: :created, location: @rest }
      else
        format.html { render :new }
        format.json { render json: @rest.errors, status: :unprocessable_entity }
      end
      end
  end

 
  def update
     respond_to do |format|
     if @rest.update(rest_params)
        format.html { redirect_to @rest,  :gflash => { :success =>  "Rest was successfully updated."}  }
        format.json { render :show, status: :ok, location: @rest }
     else
        format.html { render :edit }
        format.json { render json: @rest.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
     @rest.destroy
     respond_to do |format|
      format.html { redirect_to rests_url, :gflash => { :warning => "You just deleted something important." }  }
      format.json { head :no_content }
     end
  end

  private
  
    def set_rest
      @rest = Rest.find(params[:id])
    end

    def rest_params
      params.require(:rest).permit(:resone, :start_date, :end_date, :employe_id , :status, :contact, :place, :join_date, :department)
    end
end

