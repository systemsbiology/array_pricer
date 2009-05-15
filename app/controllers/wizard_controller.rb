class WizardController < ApplicationController

  def index
    @organisms = Organism.find(:all)
    @applications = Application.find(:all)
    @microarray_choices = Microarray.choice_hash
    @microarrays = Microarray.find(:all)
  end

end
