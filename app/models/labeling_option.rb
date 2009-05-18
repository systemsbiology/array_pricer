class LabelingOption < ActiveRecord::Base
  has_and_belongs_to_many :microarrays

  default_scope :order => "name ASC"

  def name_and_description
    "#{name} (#{description})"
  end
end
