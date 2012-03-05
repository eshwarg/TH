class Section < ActiveRecord::Base

   belongs_to :estate
   belongs_to :plant_spacing

   has_many :section_clones
   has_many :clones, :through => :section_clones, :source => :clone
 
end
