require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe OrganismsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "organisms", :action => "index").should == "/organisms"
    end
  
    it "maps #new" do
      route_for(:controller => "organisms", :action => "new").should == "/organisms/new"
    end
  
    it "maps #show" do
      route_for(:controller => "organisms", :action => "show", :id => "1").should == "/organisms/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "organisms", :action => "edit", :id => "1").should == "/organisms/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "organisms", :action => "create").should == {:path => "/organisms", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "organisms", :action => "update", :id => "1").should == {:path =>"/organisms/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "organisms", :action => "destroy", :id => "1").should == {:path =>"/organisms/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/organisms").should == {:controller => "organisms", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/organisms/new").should == {:controller => "organisms", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/organisms").should == {:controller => "organisms", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/organisms/1").should == {:controller => "organisms", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/organisms/1/edit").should == {:controller => "organisms", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/organisms/1").should == {:controller => "organisms", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/organisms/1").should == {:controller => "organisms", :action => "destroy", :id => "1"}
    end
  end
end
