class Section < ActiveRecord::Base

   belongs_to :estate
   has_one :plant_spacing

end
