require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/microarrays/edit.html.erb" do

  before(:each) do
    LabelingOption.should_receive(:find).and_return( [] )
    HybridizationOption.should_receive(:find).and_return( [] )

    assigns[:microarray] = @microarray = stub_model(Microarray,
      :new_record? => false,
      :name => "value for name",
      :internal_price => 1.5,
      :nonprofit_price => 1.5,
      :commercial_price => 1.5,
      :number_per_slide => 1,
      :organism_id => 1,
      :application_id => 1,
      :platform_id => 1,
      :catalog_number => "value for catalog_number",
      :labeling_option_ids => [1,2],
      :hybridization_option_ids => [3,4]
    )
  end

  it "renders the edit microarray form" do
    render
    
    response.should have_tag("form[action=#{microarray_path(@microarray)}][method=post]") do
      with_tag('input#microarray_name[name=?]', "microarray[name]")
      with_tag('input#microarray_internal_price[name=?]', "microarray[internal_price]")
      with_tag('input#microarray_nonprofit_price[name=?]', "microarray[nonprofit_price]")
      with_tag('input#microarray_commercial_price[name=?]', "microarray[commercial_price]")
      with_tag('input#microarray_number_per_slide[name=?]', "microarray[number_per_slide]")
      with_tag('select#microarray_organism_id[name=?]', "microarray[organism_id]")
      with_tag('select#microarray_application_id[name=?]', "microarray[application_id]")
      with_tag('select#microarray_platform_id[name=?]', "microarray[platform_id]")
      with_tag('input#microarray_catalog_number[name=?]', "microarray[catalog_number]")
      with_tag('select#microarray_labeling_option_ids[name=?]', "microarray[labeling_option_ids][]")
      with_tag('select#microarray_hybridization_option_ids[name=?]', "microarray[hybridization_option_ids][]")
    end
  end
end


