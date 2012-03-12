class PlantSpacingsController < ApplicationController

  layout 'main'
  before_filter :selected_tab

  def index
   @plant_spacings = PlantSpacing.find :all
  end

  def new
   @plant_spacing = PlantSpacing.new
  end

  def create  
   @plant_spacing = PlantSpacing.new(params[:plant_spacing])
   if @plant_spacing.valid?     
     @plant_spacing.save
     redirect_to plant_spacings_path
   else
     render :new
   end
  end

  def edit
   @plant_spacing = PlantSpacing.find(params[:id])
  end

  def update
   @plant_spacing = PlantSpacing.find(params[:id])
   if @plant_spacing.update_attributes(params[:plant_spacing])
     redirect_to plant_spacings_path
   else
     render :edit
   end
  end

  def destroy
    @plant_spacing = PlantSpacing.find(params[:id])
    @plant_spacing.destroy
    redirect_to plant_spacings_path
  end

  private

  def selected_tab
   @select = "plant_spacings"
  end

end
