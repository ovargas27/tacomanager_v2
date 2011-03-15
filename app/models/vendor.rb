class Vendor < ActiveRecord::Base
  paginates_per 5  
  validates_uniqueness_of :name
end
