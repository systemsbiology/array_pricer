module FixtureReplacement
  attributes_for :organism do |a|
    a.name = String.random
  end

  attributes_for :application do |a|
    a.name = String.random
    a.description = String.random
  end

  attributes_for :platform do |a|
    a.name = String.random
    a.vendor = String.random
  end

  attributes_for :microarray do |a|
    a.name = String.random
    a.platform = default_platform
    a.application = default_application
    a.organism = default_organism
    a.number_per_slide = 2
    a.internal_price = 100
    a.nonprofit_price = 150
    a.commercial_price = 200
  end

  attributes_for :labeling_option do |a|
    a.name = String.random
    a.platform = default_platform
    a.application = default_application
    a.internal_price = 100
    a.nonprofit_price = 150
    a.commercial_price = 200
    a.starting_amount = String.random
  end

  attributes_for :hybridization_option do |a|
    a.name = String.random
    a.description = String.random
    a.platform = default_platform
    a.internal_price = 50
    a.nonprofit_price = 75
    a.commercial_price = 100
  end

end