require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/organisms/new.html.erb" do

  
  before(:each) do
    assigns[:organism] = stub_model(Organism,
      :new_record? => true,
      :name => "value for name"
    )
  end

  it "renders new organism form" do
    render
    
    response.should have_tag("form[action=?][method=post]", organisms_path) do
      with_tag("input#organism_name[name=?]", "organism[name]")
    end
  end
end


