require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/hybridization_options/show.html.erb" do
  before(:each) do
    @platform = stub_model(Platform, :name => "Affymetrix Exon", :vendor => "Affymetrix")
    
    assigns[:hybridization_option] = @hybridization_option = stub_model(HybridizationOption,
      :name => "value for name",
      :platform => @platform,
      :internal_price => 1.5,
      :nonprofit_price => 1.5,
      :commercial_price => 1.5,
      :description => "value for description"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/Affymetrix Exon/)
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
    response.should have_text(/value\ for\ description/)
  end
end

