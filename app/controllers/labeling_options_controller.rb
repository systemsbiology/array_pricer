class LabelingOptionsController < ApplicationController
  before_filter :authenticate

  layout 'admin'

  # GET /labeling_options
  # GET /labeling_options.xml
  def index
    @labeling_options = LabelingOption.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @labeling_options }
    end
  end

  # GET /labeling_options/1
  # GET /labeling_options/1.xml
  def show
    @labeling_option = LabelingOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @labeling_option }
    end
  end

  # GET /labeling_options/new
  # GET /labeling_options/new.xml
  def new
    @labeling_option = LabelingOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @labeling_option }
    end
  end

  # GET /labeling_options/1/edit
  def edit
    @labeling_option = LabelingOption.find(params[:id])
  end

  # POST /labeling_options
  # POST /labeling_options.xml
  def create
    @labeling_option = LabelingOption.new(params[:labeling_option])

    respond_to do |format|
      if @labeling_option.save
        flash[:notice] = 'LabelingOption was successfully created.'
        format.html { redirect_to(@labeling_option) }
        format.xml  { render :xml => @labeling_option, :status => :created, :location => @labeling_option }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @labeling_option.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /labeling_options/1
  # PUT /labeling_options/1.xml
  def update
    @labeling_option = LabelingOption.find(params[:id])

    respond_to do |format|
      if @labeling_option.update_attributes(params[:labeling_option])
        flash[:notice] = 'LabelingOption was successfully updated.'
        format.html { redirect_to(@labeling_option) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @labeling_option.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /labeling_options/1
  # DELETE /labeling_options/1.xml
  def destroy
    @labeling_option = LabelingOption.find(params[:id])
    @labeling_option.destroy

    respond_to do |format|
      format.html { redirect_to(labeling_options_url) }
      format.xml  { head :ok }
    end
  end
end
