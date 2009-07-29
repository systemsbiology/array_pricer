module WizardHelper
  def price_or_not_available(price)
    if(price.nil?)
      "Check with vendor"
    else
      number_to_currency(price)
    end
  end

  def cost_per_slide(array_price, number)
    if(number > 1 && array_price)
      formatted_slide_price = number_to_currency(array_price*number)
      " (#{formatted_slide_price} per slide / #{number} arrays)"
    else
      ""
    end
  end
end
