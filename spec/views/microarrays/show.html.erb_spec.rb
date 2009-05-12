require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/microarrays/show.html.erb" do

  before(:each) do
    @platform = stub_model(Platform, :name => "Affymetrix Exon", :vendor => "Affymetrix")
    @application = stub_model(Application, :name => "WT Labeling", :description => "Label the whole transcript")
    @organism = stub_model(Organism, :name => "Mouse")

    assigns[:microarray] = @microarray = stub_model(Microarray,
      :name => "value for name",
      :internal_price => 1.5,
      :nonprofit_price => 1.5,
      :commercial_price => 1.5,
      :organism => @organism,
      :application => @application,
      :platform => @platform,
      :catalog_number => "value for catalog_number"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
    response.should have_text(/Affymetrix Exon/)
    response.should have_text(/WT Labeling/)
    response.should have_text(/Mouse/)
    response.should have_text(/value\ for\ catalog_number/)
  end
end

