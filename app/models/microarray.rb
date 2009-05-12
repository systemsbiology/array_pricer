class Microarray < ActiveRecord::Base
  belongs_to :organism
  belongs_to :platform
  belongs_to :application

  default_scope :order => "name ASC"
end
