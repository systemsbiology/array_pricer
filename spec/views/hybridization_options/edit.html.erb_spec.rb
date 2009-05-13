require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/hybridization_options/edit.html.erb" do
  
  before(:each) do
    assigns[:hybridization_option] = @hybridization_option = stub_model(HybridizationOption,
      :new_record? => false,
      :name => "value for name",
      :internal_price => 1.5,
      :nonprofit_price => 1.5,
      :commercial_price => 1.5,
      :description => "value for description"
    )
  end

  it "renders the edit hybridization_option form" do
    render
    
    response.should have_tag("form[action=#{hybridization_option_path(@hybridization_option)}][method=post]") do
      with_tag('input#hybridization_option_name[name=?]', "hybridization_option[name]")
      with_tag('input#hybridization_option_internal_price[name=?]', "hybridization_option[internal_price]")
      with_tag('input#hybridization_option_nonprofit_price[name=?]', "hybridization_option[nonprofit_price]")
      with_tag('input#hybridization_option_commercial_price[name=?]', "hybridization_option[commercial_price]")
      with_tag('input#hybridization_option_description[name=?]', "hybridization_option[description]")
    end
  end
end           


