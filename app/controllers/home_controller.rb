class HomeController < ApplicationController

   layout 'main'
   before_filter :selected_tab
  
   def index     
   end

   
   private
	
   def selected_tab
     @select = "home"
   end

end
