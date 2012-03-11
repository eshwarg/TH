class PlantSpacing < ActiveRecord::Base

   has_many :sections
   
   validates :spacing, :no_of_plants, :presence => true

end
