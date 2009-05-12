class Application < ActiveRecord::Base
  has_many :microarrays, :dependent => :destroy
  has_many :labeling_options, :dependent => :destroy 

  default_scope :order => "name ASC"
end
