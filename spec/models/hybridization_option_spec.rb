require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe HybridizationOption do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :internal_price => 1.5,
      :nonprofit_price => 1.5,
      :commercial_price => 1.5,
      :description => "value for description"
    }
  end

  it "should create a new instance given valid attributes" do
    HybridizationOption.create!(@valid_attributes)
  end
end
