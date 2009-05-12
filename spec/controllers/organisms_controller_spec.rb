require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe OrganismsController do

  def mock_organism(stubs={})
    @mock_organism ||= mock_model(Organism, stubs)
  end
  
  describe "GET index" do
    it "assigns all organisms as @organisms" do
      Organism.stub!(:find).with(:all).and_return([mock_organism])
      get :index
      assigns[:organisms].should == [mock_organism]
    end
  end

  describe "GET show" do
    it "assigns the requested organism as @organism" do
      Organism.stub!(:find).with("37").and_return(mock_organism)
      get :show, :id => "37"
      assigns[:organism].should equal(mock_organism)
    end
  end

  describe "GET new" do
    it "assigns a new organism as @organism" do
      Organism.stub!(:new).and_return(mock_organism)
      get :new
      assigns[:organism].should equal(mock_organism)
    end
  end

  describe "GET edit" do
    it "assigns the requested organism as @organism" do
      Organism.stub!(:find).with("37").and_return(mock_organism)
      get :edit, :id => "37"
      assigns[:organism].should equal(mock_organism)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created organism as @organism" do
        Organism.stub!(:new).with({'these' => 'params'}).and_return(mock_organism(:save => true))
        post :create, :organism => {:these => 'params'}
        assigns[:organism].should equal(mock_organism)
      end

      it "redirects to the created organism" do
        Organism.stub!(:new).and_return(mock_organism(:save => true))
        post :create, :organism => {}
        response.should redirect_to(organism_url(mock_organism))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved organism as @organism" do
        Organism.stub!(:new).with({'these' => 'params'}).and_return(mock_organism(:save => false))
        post :create, :organism => {:these => 'params'}
        assigns[:organism].should equal(mock_organism)
      end

      it "re-renders the 'new' template" do
        Organism.stub!(:new).and_return(mock_organism(:save => false))
        post :create, :organism => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested organism" do
        Organism.should_receive(:find).with("37").and_return(mock_organism)
        mock_organism.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :organism => {:these => 'params'}
      end

      it "assigns the requested organism as @organism" do
        Organism.stub!(:find).and_return(mock_organism(:update_attributes => true))
        put :update, :id => "1"
        assigns[:organism].should equal(mock_organism)
      end

      it "redirects to the organism" do
        Organism.stub!(:find).and_return(mock_organism(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(organism_url(mock_organism))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested organism" do
        Organism.should_receive(:find).with("37").and_return(mock_organism)
        mock_organism.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :organism => {:these => 'params'}
      end

      it "assigns the organism as @organism" do
        Organism.stub!(:find).and_return(mock_organism(:update_attributes => false))
        put :update, :id => "1"
        assigns[:organism].should equal(mock_organism)
      end

      it "re-renders the 'edit' template" do
        Organism.stub!(:find).and_return(mock_organism(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested organism" do
      Organism.should_receive(:find).with("37").and_return(mock_organism)
      mock_organism.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the organisms list" do
      Organism.stub!(:find).and_return(mock_organism(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(organisms_url)
    end
  end

end
