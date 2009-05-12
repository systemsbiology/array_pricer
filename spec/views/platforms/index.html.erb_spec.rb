require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/platforms/index.html.erb" do

  
  before(:each) do
    assigns[:platforms] = [
      stub_model(Platform,
        :name => "value for name",
        :vendor => "value for vendor"
      ),
      stub_model(Platform,
        :name => "value for name",
        :vendor => "value for vendor"
      )
    ]
  end

  it "renders a list of platforms" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for vendor".to_s, 2)
  end
end

