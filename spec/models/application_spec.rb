require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Application do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :description => "value for description"
    }
  end

  it "should create a new instance given valid attributes" do
    Application.create!(@valid_attributes)
  end
end
