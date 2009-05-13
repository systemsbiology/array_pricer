require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/labeling_options/show.html.erb" do

  before(:each) do
    assigns[:labeling_option] = @labeling_option = stub_model(LabelingOption,
      :name => "value for name",
      :internal_price => 1.5,
      :nonprofit_price => 1.5,
      :commercial_price => 1.5,
      :description => "value for description",
      :starting_amount => "value for starting_amount"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
    response.should have_text(/value\ for\ description/)
    response.should have_text(/value\ for\ starting_amount/)
  end
end

