require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe HybridizationOptionsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "hybridization_options", :action => "index").should == "/hybridization_options"
    end
  
    it "maps #new" do
      route_for(:controller => "hybridization_options", :action => "new").should == "/hybridization_options/new"
    end
  
    it "maps #show" do
      route_for(:controller => "hybridization_options", :action => "show", :id => "1").should == "/hybridization_options/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "hybridization_options", :action => "edit", :id => "1").should == "/hybridization_options/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "hybridization_options", :action => "create").should == {:path => "/hybridization_options", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "hybridization_options", :action => "update", :id => "1").should == {:path =>"/hybridization_options/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "hybridization_options", :action => "destroy", :id => "1").should == {:path =>"/hybridization_options/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/hybridization_options").should == {:controller => "hybridization_options", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/hybridization_options/new").should == {:controller => "hybridization_options", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/hybridization_options").should == {:controller => "hybridization_options", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/hybridization_options/1").should == {:controller => "hybridization_options", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/hybridization_options/1/edit").should == {:controller => "hybridization_options", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/hybridization_options/1").should == {:controller => "hybridization_options", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/hybridization_options/1").should == {:controller => "hybridization_options", :action => "destroy", :id => "1"}
    end
  end
end
