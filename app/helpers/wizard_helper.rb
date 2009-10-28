module WizardHelper
  def price_or_not_available(price, plus_tax_and_shipping=false)
    tax_and_shipping_string = plus_tax_and_shipping ? " + tax/shipping" : ""
    if(price.nil?)
      "Check with vendor"
    else
      number_to_currency(price) + tax_and_shipping_string 
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
