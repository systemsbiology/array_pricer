require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/platforms/edit.html.erb" do

  
  before(:each) do
    assigns[:platform] = @platform = stub_model(Platform,
      :new_record? => false,
      :name => "value for name",
      :vendor => "value for vendor"
    )
  end

  it "renders the edit platform form" do
    render
    
    response.should have_tag("form[action=#{platform_path(@platform)}][method=post]") do
      with_tag('input#platform_name[name=?]', "platform[name]")
      with_tag('input#platform_vendor[name=?]', "platform[vendor]")
    end
  end
end


