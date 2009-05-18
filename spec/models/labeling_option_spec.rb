require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe LabelingOption do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
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

  it "should provide a combined name and description" do
    labeling_option = LabelingOption.new(@valid_attributes)
    labeling_option.name_and_description.should == "value for name (value for description)"
  end
end
