require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe MicroarraysController do

  def mock_microarray(stubs={})
    @mock_microarray ||= mock_model(Microarray, stubs)
  end
  
  describe "GET index" do
    it "assigns all microarrays as @microarrays" do
      Microarray.stub!(:find).with(:all, :include => [:organism, :platform, :application]).and_return([mock_microarray])
      get :index
      assigns[:microarrays].should == [mock_microarray]
    end
  end

  describe "GET show" do
    it "assigns the requested microarray as @microarray" do
      Microarray.stub!(:find).with("37").and_return(mock_microarray)
      get :show, :id => "37"
      assigns[:microarray].should equal(mock_microarray)
    end
  end

  describe "GET new" do
    it "assigns a new microarray as @microarray" do
      Microarray.stub!(:new).and_return(mock_microarray)
      get :new
      assigns[:microarray].should equal(mock_microarray)
    end
  end

  describe "GET edit" do
    it "assigns the requested microarray as @microarray" do
      Microarray.stub!(:find).with("37").and_return(mock_microarray)
      get :edit, :id => "37"
      assigns[:microarray].should equal(mock_microarray)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created microarray as @microarray" do
        Microarray.stub!(:new).with({'these' => 'params'}).and_return(mock_microarray(:save => true))
        post :create, :microarray => {:these => 'params'}
        assigns[:microarray].should equal(mock_microarray)
      end

      it "redirects to the created microarray" do
        Microarray.stub!(:new).and_return(mock_microarray(:save => true))
        post :create, :microarray => {}
        response.should redirect_to(microarray_url(mock_microarray))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved microarray as @microarray" do
        Microarray.stub!(:new).with({'these' => 'params'}).and_return(mock_microarray(:save => false))
        post :create, :microarray => {:these => 'params'}
        assigns[:microarray].should equal(mock_microarray)
      end

      it "re-renders the 'new' template" do
        Microarray.stub!(:new).and_return(mock_microarray(:save => false))
        post :create, :microarray => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested microarray" do
        Microarray.should_receive(:find).with("37").and_return(mock_microarray)
        mock_microarray.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :microarray => {:these => 'params'}
      end

      it "assigns the requested microarray as @microarray" do
        Microarray.stub!(:find).and_return(mock_microarray(:update_attributes => true))
        put :update, :id => "1"
        assigns[:microarray].should equal(mock_microarray)
      end

      it "redirects to the microarray" do
        Microarray.stub!(:find).and_return(mock_microarray(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(microarray_url(mock_microarray))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested microarray" do
        Microarray.should_receive(:find).with("37").and_return(mock_microarray)
        mock_microarray.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :microarray => {:these => 'params'}
      end

      it "assigns the microarray as @microarray" do
        Microarray.stub!(:find).and_return(mock_microarray(:update_attributes => false))
        put :update, :id => "1"
        assigns[:microarray].should equal(mock_microarray)
      end

      it "re-renders the 'edit' template" do
        Microarray.stub!(:find).and_return(mock_microarray(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested microarray" do
      Microarray.should_receive(:find).with("37").and_return(mock_microarray)
      mock_microarray.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the microarrays list" do
      Microarray.stub!(:find).and_return(mock_microarray(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(microarrays_url)
    end
  end

end
