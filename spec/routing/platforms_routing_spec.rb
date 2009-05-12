require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PlatformsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "platforms", :action => "index").should == "/platforms"
    end
  
    it "maps #new" do
      route_for(:controller => "platforms", :action => "new").should == "/platforms/new"
    end
  
    it "maps #show" do
      route_for(:controller => "platforms", :action => "show", :id => "1").should == "/platforms/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "platforms", :action => "edit", :id => "1").should == "/platforms/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "platforms", :action => "create").should == {:path => "/platforms", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "platforms", :action => "update", :id => "1").should == {:path =>"/platforms/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "platforms", :action => "destroy", :id => "1").should == {:path =>"/platforms/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/platforms").should == {:controller => "platforms", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/platforms/new").should == {:controller => "platforms", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/platforms").should == {:controller => "platforms", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/platforms/1").should == {:controller => "platforms", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/platforms/1/edit").should == {:controller => "platforms", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/platforms/1").should == {:controller => "platforms", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/platforms/1").should == {:controller => "platforms", :action => "destroy", :id => "1"}
    end
  end
end
