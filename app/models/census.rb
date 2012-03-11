class Census < ActiveRecord::Base

   belongs_to :section

   validates :section_id, :year, :no_of_plants, :census_date, :presence => true

end
