class PluckingRound < ActiveRecord::Base

    belongs_to :section
    
    validates :section_id, :plucking_date, :green_leaves_harvested, :pluckers, :area_covered, :presence => true

end
