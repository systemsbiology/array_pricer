require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe LabelingOptionsController do

  def mock_labeling_option(stubs={})
    @mock_labeling_option ||= mock_model(LabelingOption, stubs)
  end
  
  describe "GET index" do
    it "assigns all labeling_options as @labeling_options" do
      LabelingOption.stub!(:find).with(:all).and_return([mock_labeling_option])
      get :index
      assigns[:labeling_options].should == [mock_labeling_option]
    end
  end

  describe "GET show" do
    it "assigns the requested labeling_option as @labeling_option" do
      LabelingOption.stub!(:find).with("37").and_return(mock_labeling_option)
      get :show, :id => "37"
      assigns[:labeling_option].should equal(mock_labeling_option)
    end
  end

  describe "GET new" do
    it "assigns a new labeling_option as @labeling_option" do
      LabelingOption.stub!(:new).and_return(mock_labeling_option)
      get :new
      assigns[:labeling_option].should equal(mock_labeling_option)
    end
  end

  describe "GET edit" do
    it "assigns the requested labeling_option as @labeling_option" do
      LabelingOption.stub!(:find).with("37").and_return(mock_labeling_option)
      get :edit, :id => "37"
      assigns[:labeling_option].should equal(mock_labeling_option)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created labeling_option as @labeling_option" do
        LabelingOption.stub!(:new).with({'these' => 'params'}).and_return(mock_labeling_option(:save => true))
        post :create, :labeling_option => {:these => 'params'}
        assigns[:labeling_option].should equal(mock_labeling_option)
      end

      it "redirects to the created labeling_option" do
        LabelingOption.stub!(:new).and_return(mock_labeling_option(:save => true))
        post :create, :labeling_option => {}
        response.should redirect_to(labeling_option_url(mock_labeling_option))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved labeling_option as @labeling_option" do
        LabelingOption.stub!(:new).with({'these' => 'params'}).and_return(mock_labeling_option(:save => false))
        post :create, :labeling_option => {:these => 'params'}
        assigns[:labeling_option].should equal(mock_labeling_option)
      end

      it "re-renders the 'new' template" do
        LabelingOption.stub!(:new).and_return(mock_labeling_option(:save => false))
        post :create, :labeling_option => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested labeling_option" do
        LabelingOption.should_receive(:find).with("37").and_return(mock_labeling_option)
        mock_labeling_option.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :labeling_option => {:these => 'params'}
      end

      it "assigns the requested labeling_option as @labeling_option" do
        LabelingOption.stub!(:find).and_return(mock_labeling_option(:update_attributes => true))
        put :update, :id => "1"
        assigns[:labeling_option].should equal(mock_labeling_option)
      end

      it "redirects to the labeling_option" do
        LabelingOption.stub!(:find).and_return(mock_labeling_option(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(labeling_option_url(mock_labeling_option))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested labeling_option" do
        LabelingOption.should_receive(:find).with("37").and_return(mock_labeling_option)
        mock_labeling_option.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :labeling_option => {:these => 'params'}
      end

      it "assigns the labeling_option as @labeling_option" do
        LabelingOption.stub!(:find).and_return(mock_labeling_option(:update_attributes => false))
        put :update, :id => "1"
        assigns[:labeling_option].should equal(mock_labeling_option)
      end

      it "re-renders the 'edit' template" do
        LabelingOption.stub!(:find).and_return(mock_labeling_option(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested labeling_option" do
      LabelingOption.should_receive(:find).with("37").and_return(mock_labeling_option)
      mock_labeling_option.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the labeling_options list" do
      LabelingOption.stub!(:find).and_return(mock_labeling_option(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(labeling_options_url)
    end
  end

end
