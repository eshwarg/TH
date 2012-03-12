class Yield < ActiveRecord::Base

   belongs_to :section

   has_many :yield_prunes
   has_many :prunes, :through => :yield_prunes, :source => :prune

   validates :section_id, :proposed, :actual, :year, :presence => true

end
