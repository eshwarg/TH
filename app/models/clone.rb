class Clone < ActiveRecord::Base

   has_many :section_clones
   has_many :sections, :through => :section_clones, :source => :section

   validates :name, :presence => true
   
end
