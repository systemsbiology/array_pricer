require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Microarray do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :internal_price => 1.5,
      :nonprofit_price => 1.5,
      :commercial_price => 1.5,
      :number_per_slide => 1,
      :organism_id => 1,
      :application_id => 1,
      :catalog_number => "value for catalog_number"
    }
  end

  it "should create a new instance given valid attributes" do
    Microarray.create!(@valid_attributes)
  end

  it "should provide a hash of microarray by organism and application" do
    organism_1 = create_organism
    organism_2 = create_organism
    application_1 = create_application
    application_2 = create_application
    microarray_1 = create_microarray(:organism => organism_1, :application => application_1)
    microarray_2 = create_microarray(:organism => organism_1, :application => application_1)
    microarray_3 = create_microarray(:organism => organism_1, :application => application_2)
    microarray_4 = create_microarray(:organism => organism_2, :application => application_2)

    Microarray.choice_hash.should == {
      organism_1.id => {
        application_1.id => [microarray_1, microarray_2],
        application_2.id => [microarray_3]
      },
      organism_2.id => {
        application_2.id => [microarray_4]      
      }
    }
  end

end
