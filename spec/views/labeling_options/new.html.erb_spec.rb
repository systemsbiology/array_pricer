require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/labeling_options/new.html.erb" do

  
  before(:each) do
    assigns[:labeling_option] = stub_model(LabelingOption,
      :new_record? => true,
      :name => "value for name",
      :internal_price => 1.5,
      :nonprofit_price => 1.5,
      :commercial_price => 1.5,
      :description => "value for description",
      :starting_amount => "value for starting_amount",
      :ordering_information => "value for ordering information"
    )
  end

  it "renders new labeling_option form" do
    render
    
    response.should have_tag("form[action=?][method=post]", labeling_options_path) do
      with_tag("input#labeling_option_name[name=?]", "labeling_option[name]")
      with_tag("input#labeling_option_internal_price[name=?]", "labeling_option[internal_price]")
      with_tag("input#labeling_option_nonprofit_price[name=?]", "labeling_option[nonprofit_price]")
      with_tag("input#labeling_option_commercial_price[name=?]", "labeling_option[commercial_price]")
      with_tag("input#labeling_option_description[name=?]", "labeling_option[description]")
      with_tag("input#labeling_option_starting_amount[name=?]", "labeling_option[starting_amount]")
      with_tag('input#labeling_option_ordering_information[name=?]', "labeling_option[ordering_information]")
    end
  end
end


