require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe WizardController do

  describe "GET 'index'" do

    before(:each) do
      @organisms = [mock_model(Organism)]
      @applications = [mock_model(Application)]
      @microarray_choices = mock("Microarray choice hash")
      @microarrays = [mock_model(Microarray)]
      Organism.stub!(:find).and_return(@organisms)
      Application.stub!(:find).and_return(@applications)
      Microarray.stub!(:choice_hash).and_return(@microarray_choices)
      Microarray.stub!(:find).and_return(@microarrays)
    end

    def do_get
      get 'index'
    end

    it "should find all organisms" do
      Organism.should_receive(:find).with(:all).and_return(@organisms)
      do_get
    end

    it "should find all applications" do
      Application.should_receive(:find).with(:all).and_return(@applications)
      do_get
    end

    it "should get the microarray choice hash" do
      Microarray.should_receive(:choice_hash).and_return(@microarray_choices)
      do_get
    end

    it "should find all microarrays" do
      Microarray.should_receive(:find).with(:all).and_return(@microarrays)
      do_get
    end

    it "should assign organisms to the view" do
      do_get
      assigns(:organisms).should == @organisms
    end

    it "should assign applications to the view" do
      do_get
      assigns(:applications).should == @applications
    end

    it "should assign microarray_choices to the view" do
      do_get
      assigns(:microarray_choices).should == @microarray_choices
    end

    it "should assign microarrays to the view" do
      do_get
      assigns(:microarrays).should == @microarrays
    end

    it "should be successful" do
      do_get
      response.should be_success
    end
  end
end
