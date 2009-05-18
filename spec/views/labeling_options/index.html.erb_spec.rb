require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/labeling_options/index.html.erb" do

  
  before(:each) do
    assigns[:labeling_options] = [
      stub_model(LabelingOption,
        :name => "value for name",
        :internal_price => 1.5,
        :nonprofit_price => 1.5,
        :commercial_price => 1.5,
        :description => "value for description",
        :starting_amount => "value for starting_amount",
        :ordering_information => "catalog #123"
      ),
      stub_model(LabelingOption,
        :name => "value for name",
        :internal_price => 1.5,
        :nonprofit_price => 1.5,
        :commercial_price => 1.5,
        :description => "value for description",
        :starting_amount => "value for starting_amount",
        :ordering_information => "catalog #123"
      )
    ]
  end

  it "renders a list of labeling_options" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
    response.should have_tag("tr>td", "value for starting_amount".to_s, 2)
    response.should have_tag("tr>td", "catalog #123".to_s, 2)
  end
end

