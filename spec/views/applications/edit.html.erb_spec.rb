require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/applications/edit.html.erb" do

  
  before(:each) do
    assigns[:application] = @application = stub_model(Application,
      :new_record? => false,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "renders the edit application form" do
    render
    
    response.should have_tag("form[action=#{application_path(@application)}][method=post]") do
      with_tag('input#application_name[name=?]', "application[name]")
      with_tag('input#application_description[name=?]', "application[description]")
    end
  end
end


