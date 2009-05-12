require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe LabelingOption do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :platform_id => 1,
      :application_id => 1,
      :internal_price => 1.5,
      :nonprofit_price => 1.5,
      :commercial_price => 1.5,
      :description => "value for description",
      :starting_amount => "value for starting_amount"
    }
  end

  it "should create a new instance given valid attributes" do
    LabelingOption.create!(@valid_attributes)
  end
end
