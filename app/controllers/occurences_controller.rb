class OccurencesController < ApplicationController
  # GET /occurences
  # GET /occurences.xml
  def index
    @occurences = Occurence.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @occurences }
    end
  end

  # GET /occurences/1
  # GET /occurences/1.xml
  def show
    @occurence = Occurence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @occurence }
    end
  end

  # GET /occurences/new
  # GET /occurences/new.xml
  def new
    @occurence = Occurence.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @occurence }
    end
  end

  # GET /occurences/1/edit
  def edit
    @occurence = Occurence.find(params[:id])
  end

  # POST /occurences
  # POST /occurences.xml
  def create
    @occurence = Occurence.new(params[:occurence])

    respond_to do |format|
      if @occurence.save
        flash[:notice] = 'Occurence was successfully created.'
        format.html { redirect_to(@occurence) }
        format.xml  { render :xml => @occurence, :status => :created, :location => @occurence }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @occurence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /occurences/1
  # PUT /occurences/1.xml
  def update
    @occurence = Occurence.find(params[:id])

    respond_to do |format|
      if @occurence.update_attributes(params[:occurence])
        flash[:notice] = 'Occurence was successfully updated.'
        format.html { redirect_to(@occurence) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @occurence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /occurences/1
  # DELETE /occurences/1.xml
  def destroy
    @occurence = Occurence.find(params[:id])
    @occurence.destroy

    respond_to do |format|
      format.html { redirect_to(occurences_url) }
      format.xml  { head :ok }
    end
  end
end
