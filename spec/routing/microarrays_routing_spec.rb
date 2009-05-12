require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe MicroarraysController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "microarrays", :action => "index").should == "/microarrays"
    end
  
    it "maps #new" do
      route_for(:controller => "microarrays", :action => "new").should == "/microarrays/new"
    end
  
    it "maps #show" do
      route_for(:controller => "microarrays", :action => "show", :id => "1").should == "/microarrays/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "microarrays", :action => "edit", :id => "1").should == "/microarrays/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "microarrays", :action => "create").should == {:path => "/microarrays", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "microarrays", :action => "update", :id => "1").should == {:path =>"/microarrays/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "microarrays", :action => "destroy", :id => "1").should == {:path =>"/microarrays/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/microarrays").should == {:controller => "microarrays", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/microarrays/new").should == {:controller => "microarrays", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/microarrays").should == {:controller => "microarrays", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/microarrays/1").should == {:controller => "microarrays", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/microarrays/1/edit").should == {:controller => "microarrays", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/microarrays/1").should == {:controller => "microarrays", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/microarrays/1").should == {:controller => "microarrays", :action => "destroy", :id => "1"}
    end
  end
end
