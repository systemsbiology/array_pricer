require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/organisms/edit.html.erb" do

  
  before(:each) do
    assigns[:organism] = @organism = stub_model(Organism,
      :new_record? => false,
      :name => "value for name"
    )
  end

  it "renders the edit organism form" do
    render
    
    response.should have_tag("form[action=#{organism_path(@organism)}][method=post]") do
      with_tag('input#organism_name[name=?]', "organism[name]")
    end
  end
end


