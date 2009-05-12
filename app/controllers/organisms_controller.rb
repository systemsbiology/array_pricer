class OrganismsController < ApplicationController
  before_filter :authenticate

  layout 'admin'

  # GET /organisms
  # GET /organisms.xml
  def index
    @organisms = Organism.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @organisms }
    end
  end

  # GET /organisms/1
  # GET /organisms/1.xml
  def show
    @organism = Organism.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @organism }
    end
  end

  # GET /organisms/new
  # GET /organisms/new.xml
  def new
    @organism = Organism.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @organism }
    end
  end

  # GET /organisms/1/edit
  def edit
    @organism = Organism.find(params[:id])
  end

  # POST /organisms
  # POST /organisms.xml
  def create
    @organism = Organism.new(params[:organism])

    respond_to do |format|
      if @organism.save
        flash[:notice] = 'Organism was successfully created.'
        format.html { redirect_to(@organism) }
        format.xml  { render :xml => @organism, :status => :created, :location => @organism }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @organism.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /organisms/1
  # PUT /organisms/1.xml
  def update
    @organism = Organism.find(params[:id])

    respond_to do |format|
      if @organism.update_attributes(params[:organism])
        flash[:notice] = 'Organism was successfully updated.'
        format.html { redirect_to(@organism) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @organism.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /organisms/1
  # DELETE /organisms/1.xml
  def destroy
    @organism = Organism.find(params[:id])
    @organism.destroy

    respond_to do |format|
      format.html { redirect_to(organisms_url) }
      format.xml  { head :ok }
    end
  end
end
