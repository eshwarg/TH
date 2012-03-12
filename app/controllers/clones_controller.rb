class ClonesController < ApplicationController

  layout 'main'
  before_filter :selected_tab
  before_filter :get_data 

  def index
   @clones = Clone.find :all
  end

  def new
   @sections = Section.find :all
   @clone = Clone.new
  end

  def create
   @clone = Clone.new(params[:clone])
   if @clone.valid?     
     @clone.save
     if params[:section]
       params[:section][:name].each do |f|
         SectionClone.create({:section_id => f, :clone_id => @clone.id})
       end
     end
     redirect_to clones_path
   else
     render :new
   end
  end

  def edit
   @clone = Clone.find(params[:id])
   @sections = Section.find :all
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

  private

  def get_data
   @sections = Section.find(:all) #.collect{|x| x.name }
  end
  
  def selected_tab
   @select = "clones"
  end

end
