require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe LabelingOptionsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "labeling_options", :action => "index").should == "/labeling_options"
    end
  
    it "maps #new" do
      route_for(:controller => "labeling_options", :action => "new").should == "/labeling_options/new"
    end
  
    it "maps #show" do
      route_for(:controller => "labeling_options", :action => "show", :id => "1").should == "/labeling_options/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "labeling_options", :action => "edit", :id => "1").should == "/labeling_options/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "labeling_options", :action => "create").should == {:path => "/labeling_options", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "labeling_options", :action => "update", :id => "1").should == {:path =>"/labeling_options/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "labeling_options", :action => "destroy", :id => "1").should == {:path =>"/labeling_options/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/labeling_options").should == {:controller => "labeling_options", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/labeling_options/new").should == {:controller => "labeling_options", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/labeling_options").should == {:controller => "labeling_options", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/labeling_options/1").should == {:controller => "labeling_options", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/labeling_options/1/edit").should == {:controller => "labeling_options", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/labeling_options/1").should == {:controller => "labeling_options", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/labeling_options/1").should == {:controller => "labeling_options", :action => "destroy", :id => "1"}
    end
  end
end
