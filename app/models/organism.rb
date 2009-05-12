class Organism < ActiveRecord::Base
  has_many :microarrays, :dependent => :destroy

  default_scope :order => "name ASC"
end
