class ClonesController < ApplicationController

  def index
   @clones = Clone.find :all
  end

  def new
   @clone = Clone.new
  end

  def create  
   @clone = Clone.new(params[:clone])
   if @clone.valid?
     @clone.save
     redirect_to clones_path
   else
     render :new
   end
  end

  def edit
   @clone = Clone.find(params[:id])
  end

  def update   
   @clone = Clone.find(params[:id])
   if @clone.update_attributes(params[:clone])
     redirect_to clones_path
   else
     render :edit
   end
  end

  def destroy
    @clone = Clone.find(params[:id])
    @clone.destroy
    redirect_to clones_path
  end

end
