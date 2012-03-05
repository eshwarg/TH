class Prune < ActiveRecord::Base

   has_many :yield_prunes
   has_many :yields, :through => :yield_prunes, :source => :yield

end
