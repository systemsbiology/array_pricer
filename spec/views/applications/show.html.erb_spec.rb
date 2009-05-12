require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/applications/show.html.erb" do

  before(:each) do
    assigns[:application] = @application = stub_model(Application,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ description/)
  end
end

