require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/applications/index.html.erb" do

  
  before(:each) do
    assigns[:applications] = [
      stub_model(Application,
        :name => "value for name",
        :description => "value for description"
      ),
      stub_model(Application,
        :name => "value for name",
        :description => "value for description"
      )
    ]
  end

  it "renders a list of applications" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
  end
end

