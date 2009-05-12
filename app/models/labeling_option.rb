class LabelingOption < ActiveRecord::Base
  belongs_to :application
  belongs_to :platform

  default_scope :order => "name ASC"
end
