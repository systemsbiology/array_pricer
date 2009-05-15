module WizardHelper
  def price_or_not_available(price)
    if(price.nil?)
      "Not available"
    else
      number_to_currency(price)
    end
  end
end
