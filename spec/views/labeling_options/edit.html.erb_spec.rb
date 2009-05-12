require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/labeling_options/edit.html.erb" do

  
  before(:each) do
    assigns[:labeling_option] = @labeling_option = stub_model(LabelingOption,
      :new_record? => false,
      :name => "value for name",
      :platform_id => 1,
      :application_id => 1,
      :internal_price => 1.5,
      :nonprofit_price => 1.5,
      :commercial_price => 1.5,
      :description => "value for description",
      :starting_amount => "value for starting_amount"
    )
  end

  it "renders the edit labeling_option form" do
    render
    
    response.should have_tag("form[action=#{labeling_option_path(@labeling_option)}][method=post]") do
      with_tag('input#labeling_option_name[name=?]', "labeling_option[name]")
      with_tag('select#labeling_option_platform_id[name=?]', "labeling_option[platform_id]")
      with_tag('select#labeling_option_application_id[name=?]', "labeling_option[application_id]")
      with_tag('input#labeling_option_internal_price[name=?]', "labeling_option[internal_price]")
      with_tag('input#labeling_option_nonprofit_price[name=?]', "labeling_option[nonprofit_price]")
      with_tag('input#labeling_option_commercial_price[name=?]', "labeling_option[commercial_price]")
      with_tag('input#labeling_option_description[name=?]', "labeling_option[description]")
      with_tag('input#labeling_option_starting_amount[name=?]', "labeling_option[starting_amount]")
    end
  end
end


