class HybridizationOption < ActiveRecord::Base
  belongs_to :platform

  default_scope :order => "name ASC"
end
