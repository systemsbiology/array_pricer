require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Platform do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :vendor => "value for vendor"
    }
  end

  it "should create a new instance given valid attributes" do
    Platform.create!(@valid_attributes)
  end
end
