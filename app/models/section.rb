class Section < ActiveRecord::Base

   belongs_to :estate
   belongs_to :plant_spacing

   has_many :section_clones
   has_many :clones, :through => :section_clones, :source => :clone

   has_many :census
   has_many :yields
   has_many :plucking_rounds

   validates :estate_id, :plant_spacing_id, :name, :code, :area, :year_of_plant, :presence => true
 
end
