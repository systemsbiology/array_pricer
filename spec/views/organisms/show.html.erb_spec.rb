require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/organisms/show.html.erb" do

  before(:each) do
    assigns[:organism] = @organism = stub_model(Organism,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end

