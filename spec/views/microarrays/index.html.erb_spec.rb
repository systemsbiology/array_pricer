require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/microarrays/index.html.erb" do

  
  before(:each) do
    @platform = stub_model(Platform, :name => "Affymetrix Exon", :vendor => "Affymetrix")
    @application = stub_model(Application, :name => "WT Labeling", :description => "Label the whole transcript")
    @organism = stub_model(Organism, :name => "Mouse")
    
    assigns[:microarrays] = [
      stub_model(Microarray,
        :name => "value for name",
        :internal_price => 1.5,
        :nonprofit_price => 1.5,
        :commercial_price => 1.5,
        :number_per_slide => 1,
        :organism => @organism,
        :application => @application,
        :platform => @platform,
        :catalog_number => "value for catalog_number"
      ),
      stub_model(Microarray,
        :name => "value for name",
        :internal_price => 1.5,
        :nonprofit_price => 1.5,
        :commercial_price => 1.5,
        :number_per_slide => 1,
        :organism => @organism,
        :application => @application,
        :platform => @platform,
        :catalog_number => "value for catalog_number"
      )
    ]
  end

  it "renders a list of microarrays" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", "Affymetrix Exon", 2)
    response.should have_tag("tr>td", "WT Labeling", 2)
    response.should have_tag("tr>td", "Mouse", 2)
    response.should have_tag("tr>td", "value for catalog_number".to_s, 2)
  end
end

