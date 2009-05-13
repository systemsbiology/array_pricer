require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/hybridization_options/index.html.erb" do
  
  before(:each) do
    assigns[:hybridization_options] = [
      stub_model(HybridizationOption,
        :name => "value for name",
        :internal_price => 1.5,
        :nonprofit_price => 1.5,
        :commercial_price => 1.5,
        :description => "value for description"
      ),
      stub_model(HybridizationOption,
        :name => "value for name",
        :internal_price => 1.5,
        :nonprofit_price => 1.5,
        :commercial_price => 1.5,
        :description => "value for description"
      )
    ]
  end

  it "renders a list of hybridization_options" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
  end
end

