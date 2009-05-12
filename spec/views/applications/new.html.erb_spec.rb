require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/applications/new.html.erb" do

  
  before(:each) do
    assigns[:application] = stub_model(Application,
      :new_record? => true,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "renders new application form" do
    render
    
    response.should have_tag("form[action=?][method=post]", applications_path) do
      with_tag("input#application_name[name=?]", "application[name]")
      with_tag("input#application_description[name=?]", "application[description]")
    end
  end
end


