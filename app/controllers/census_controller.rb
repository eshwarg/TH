class CensusController < ApplicationController

  layout 'main'
  before_filter :selected_tab

  def index
   @census = Census.find :all
  end

  def new
   @census = Census.new
  end

  def create
   @census = Census.new(params[:census])
   if @census.valid?     
     @census.save
     redirect_to census_path
   else
     render :new
   end
  end

  def edit
   @census = Census.find(params[:id])
  end

  def update   
   @census = Census.find(params[:id])
   if @census.update_attributes(params[:census])
     redirect_to census_path
   else
     render :edit
   end
  end

  def destroy
    @census = Census.find(params[:id])
    @census.destroy
    redirect_to census_path
  end

  private
	
  def selected_tab
    @select = "census"
  end

end
