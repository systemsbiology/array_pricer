class HybridizationOptionsController < ApplicationController
  before_filter :authenticate

  layout 'admin'

  # GET /hybridization_options
  # GET /hybridization_options.xml
  def index
    @hybridization_options = HybridizationOption.find(:all, :include => :platform)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hybridization_options }
    end
  end

  # GET /hybridization_options/1
  # GET /hybridization_options/1.xml
  def show
    @hybridization_option = HybridizationOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hybridization_option }
    end
  end

  # GET /hybridization_options/new
  # GET /hybridization_options/new.xml
  def new
    @hybridization_option = HybridizationOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hybridization_option }
    end
  end

  # GET /hybridization_options/1/edit
  def edit
    @hybridization_option = HybridizationOption.find(params[:id])
  end

  # POST /hybridization_options
  # POST /hybridization_options.xml
  def create
    @hybridization_option = HybridizationOption.new(params[:hybridization_option])

    respond_to do |format|
      if @hybridization_option.save
        flash[:notice] = 'HybridizationOption was successfully created.'
        format.html { redirect_to(@hybridization_option) }
        format.xml  { render :xml => @hybridization_option, :status => :created, :location => @hybridization_option }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hybridization_option.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hybridization_options/1
  # PUT /hybridization_options/1.xml
  def update
    @hybridization_option = HybridizationOption.find(params[:id])

    respond_to do |format|
      if @hybridization_option.update_attributes(params[:hybridization_option])
        flash[:notice] = 'HybridizationOption was successfully updated.'
        format.html { redirect_to(@hybridization_option) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hybridization_option.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hybridization_options/1
  # DELETE /hybridization_options/1.xml
  def destroy
    @hybridization_option = HybridizationOption.find(params[:id])
    @hybridization_option.destroy

    respond_to do |format|
      format.html { redirect_to(hybridization_options_url) }
      format.xml  { head :ok }
    end
  end
end
