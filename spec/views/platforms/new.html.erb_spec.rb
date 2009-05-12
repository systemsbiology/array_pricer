require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/platforms/new.html.erb" do

  
  before(:each) do
    assigns[:platform] = stub_model(Platform,
      :new_record? => true,
      :name => "value for name",
      :vendor => "value for vendor"
    )
  end

  it "renders new platform form" do
    render
    
    response.should have_tag("form[action=?][method=post]", platforms_path) do
      with_tag("input#platform_name[name=?]", "platform[name]")
      with_tag("input#platform_vendor[name=?]", "platform[vendor]")
    end
  end
end


