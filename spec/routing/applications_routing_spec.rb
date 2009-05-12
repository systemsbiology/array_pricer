require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ApplicationsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "applications", :action => "index").should == "/applications"
    end
  
    it "maps #new" do
      route_for(:controller => "applications", :action => "new").should == "/applications/new"
    end
  
    it "maps #show" do
      route_for(:controller => "applications", :action => "show", :id => "1").should == "/applications/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "applications", :action => "edit", :id => "1").should == "/applications/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "applications", :action => "create").should == {:path => "/applications", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "applications", :action => "update", :id => "1").should == {:path =>"/applications/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "applications", :action => "destroy", :id => "1").should == {:path =>"/applications/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/applications").should == {:controller => "applications", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/applications/new").should == {:controller => "applications", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/applications").should == {:controller => "applications", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/applications/1").should == {:controller => "applications", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/applications/1/edit").should == {:controller => "applications", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/applications/1").should == {:controller => "applications", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/applications/1").should == {:controller => "applications", :action => "destroy", :id => "1"}
    end
  end
end
