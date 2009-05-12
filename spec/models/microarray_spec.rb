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
end
