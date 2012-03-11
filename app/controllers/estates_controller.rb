class EstatesController < ApplicationController

  
  def index
   @estates = Estate.find :all
  end

  def new
   @estate = Estate.new
  end

  def create  
   @estate = Estate.new(params[:estate])
   if @estate.valid?
     @estate.save
     redirect_to estates_path
   else
     render :new
   end
  end

  def edit
   @estate = Estate.find(params[:id])
  end

  def update   
   @estate = Estate.find(params[:id])
   if @estate.update_attributes(params[:estate])
     redirect_to estates_path
   else
     render :edit
   end
  end

  def destroy
    @estate = Estate.find(params[:id])
    @estate.destroy
    redirect_to estates_path
  end


end
