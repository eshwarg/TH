class SectionClone < ActiveRecord::Base

    belongs_to :section
    belongs_to :clone
    
end
