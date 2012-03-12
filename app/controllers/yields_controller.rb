class YieldsController < ApplicationController

  def index
   @yields = Yield.find :all
  end

  def new  
   @yield = Yield.new
  end

  def create
   @yield = Yield.new(params[:yield])
   if @yield.valid?     
     @yield.save
     redirect_to yields_path
   else
     render :new
   end
  end

  def edit
   @yield = Yield.find(params[:id])
  end

  def update   
   @yield = Yield.find(params[:id])
   if @yield.update_attributes(params[:yield])
     redirect_to yields_path
   else
     render :edit
   end
  end

  def destroy
    @yield = Yield.find(params[:id])
    @yield.destroy
    redirect_to yields_path
  end

end
