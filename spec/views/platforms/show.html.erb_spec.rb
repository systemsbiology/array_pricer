require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/platforms/show.html.erb" do

  before(:each) do
    assigns[:platform] = @platform = stub_model(Platform,
      :name => "value for name",
      :vendor => "value for vendor"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ vendor/)
  end
end

