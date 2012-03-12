class PluckingRoundsController < ApplicationController

  layout 'main'
  before_filter :selected_tab

  def index
   @plucking_rounds = PluckingRound.find :all
  end

  def new
   @plucking_round = PluckingRound.new
  end

  def create
   @plucking_round = PluckingRound.new(params[:plucking_round])
   if @plucking_round.valid?     
     @plucking_round.save
     redirect_to plucking_rounds_path
   else
     render :new
   end
  end

  def edit
   @plucking_round = PluckingRound.find(params[:id])
  end

  def update   
   @plucking_round = PluckingRound.find(params[:id])
   if @plucking_round.update_attributes(params[:plucking_round])
     redirect_to plucking_rounds_path
   else
     render :edit
   end
  end

  def destroy
    @plucking_round = PluckingRound.find(params[:id])
    @plucking_round.destroy
    redirect_to plucking_rounds_path
  end

  private

  def selected_tab
   @select = "plucking_rounds"
  end

end
