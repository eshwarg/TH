class PlantSpacing < ActiveRecord::Base

   has_many :sections

   validates_presence_of :spacing, :no_of_plants

end
