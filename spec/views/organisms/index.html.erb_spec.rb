require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/organisms/index.html.erb" do

  
  before(:each) do
    assigns[:organisms] = [
      stub_model(Organism,
        :name => "value for name"
      ),
      stub_model(Organism,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of organisms" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end

