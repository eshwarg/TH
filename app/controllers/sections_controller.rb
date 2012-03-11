class SectionsController < ApplicationController

  def index
   @sections = Section.find :all
  end

  def new
   @section = Section.new
  end

  def create  
   @section = Section.new(params[:section])
   if @section.valid?
     @section.save
     redirect_to sections_path
   else
     render :new
   end
  end

  def edit
   @section = Section.find(params[:id])
  end

  def update   
   @section = Section.find(params[:id])
   if @section.update_attributes(params[:section])
     redirect_to sections_path
   else
     render :edit
   end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to sections_path
  end

end
