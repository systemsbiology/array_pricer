require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe HybridizationOptionsController do

  def mock_hybridization_option(stubs={})
    @mock_hybridization_option ||= mock_model(HybridizationOption, stubs)
  end
  
  describe "GET index" do
    it "assigns all hybridization_options as @hybridization_options" do
      HybridizationOption.stub!(:find).with(:all).
        and_return([mock_hybridization_option])
      get :index
      assigns[:hybridization_options].should == [mock_hybridization_option]
    end
  end

  describe "GET show" do
    it "assigns the requested hybridization_option as @hybridization_option" do
      HybridizationOption.stub!(:find).with("37").and_return(mock_hybridization_option)
      get :show, :id => "37"
      assigns[:hybridization_option].should equal(mock_hybridization_option)
    end
  end

  describe "GET new" do
    it "assigns a new hybridization_option as @hybridization_option" do
      HybridizationOption.stub!(:new).and_return(mock_hybridization_option)
      get :new
      assigns[:hybridization_option].should equal(mock_hybridization_option)
    end
  end

  describe "GET edit" do
    it "assigns the requested hybridization_option as @hybridization_option" do
      HybridizationOption.stub!(:find).with("37").and_return(mock_hybridization_option)
      get :edit, :id => "37"
      assigns[:hybridization_option].should equal(mock_hybridization_option)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created hybridization_option as @hybridization_option" do
        HybridizationOption.stub!(:new).with({'these' => 'params'}).and_return(mock_hybridization_option(:save => true))
        post :create, :hybridization_option => {:these => 'params'}
        assigns[:hybridization_option].should equal(mock_hybridization_option)
      end

      it "redirects to the created hybridization_option" do
        HybridizationOption.stub!(:new).and_return(mock_hybridization_option(:save => true))
        post :create, :hybridization_option => {}
        response.should redirect_to(hybridization_option_url(mock_hybridization_option))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved hybridization_option as @hybridization_option" do
        HybridizationOption.stub!(:new).with({'these' => 'params'}).and_return(mock_hybridization_option(:save => false))
        post :create, :hybridization_option => {:these => 'params'}
        assigns[:hybridization_option].should equal(mock_hybridization_option)
      end

      it "re-renders the 'new' template" do
        HybridizationOption.stub!(:new).and_return(mock_hybridization_option(:save => false))
        post :create, :hybridization_option => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested hybridization_option" do
        HybridizationOption.should_receive(:find).with("37").and_return(mock_hybridization_option)
        mock_hybridization_option.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :hybridization_option => {:these => 'params'}
      end

      it "assigns the requested hybridization_option as @hybridization_option" do
        HybridizationOption.stub!(:find).and_return(mock_hybridization_option(:update_attributes => true))
        put :update, :id => "1"
        assigns[:hybridization_option].should equal(mock_hybridization_option)
      end

      it "redirects to the hybridization_option" do
        HybridizationOption.stub!(:find).and_return(mock_hybridization_option(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(hybridization_option_url(mock_hybridization_option))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested hybridization_option" do
        HybridizationOption.should_receive(:find).with("37").and_return(mock_hybridization_option)
        mock_hybridization_option.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :hybridization_option => {:these => 'params'}
      end

      it "assigns the hybridization_option as @hybridization_option" do
        HybridizationOption.stub!(:find).and_return(mock_hybridization_option(:update_attributes => false))
        put :update, :id => "1"
        assigns[:hybridization_option].should equal(mock_hybridization_option)
      end

      it "re-renders the 'edit' template" do
        HybridizationOption.stub!(:find).and_return(mock_hybridization_option(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested hybridization_option" do
      HybridizationOption.should_receive(:find).with("37").and_return(mock_hybridization_option)
      mock_hybridization_option.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the hybridization_options list" do
      HybridizationOption.stub!(:find).and_return(mock_hybridization_option(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(hybridization_options_url)
    end
  end

end
