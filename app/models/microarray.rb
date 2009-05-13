class Microarray < ActiveRecord::Base
  belongs_to :organism
  belongs_to :platform
  belongs_to :application

  has_and_belongs_to_many :labeling_options
  has_and_belongs_to_many :hybridization_options

  default_scope :order => "name ASC"
  
  def self.choice_hash
    hash = Hash.new

    Organism.find(:all).each do |organism|
      Application.find(:all).each do |application|
        microarrays = Microarray.find(:all, :conditions => {
          :organism_id => organism.id,
          :application_id => application.id       
        })

        if(microarrays.size > 0)
          hash[organism.id] ||= Hash.new
          hash[organism.id][application.id] = microarrays
        end
      end
    end

    return hash
  end
end
