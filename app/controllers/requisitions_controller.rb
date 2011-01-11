class RequisitionsController < ApplicationController
  # GET /requisitions
  # GET /requisitions.xml
  def index
    @requisitions = Requisition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @requisitions }
    end
  end

  # GET /requisitions/1
  # GET /requisitions/1.xml
  def show
    @requisition = Requisition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @requisition }
    end
  end

  # GET /requisitions/new
  # GET /requisitions/new.xml
  def new
    @requisition = Requisition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @requisition }
    end
  end

  # GET /requisitions/1/edit
  def edit
    @requisition = Requisition.find(params[:id])
  end

  # POST /requisitions
  # POST /requisitions.xml
  def create
    @requisition = Requisition.new(params[:requisition])

    respond_to do |format|
      if @requisition.save
        format.html { redirect_to(@requisition, :notice => 'Requisition was successfully created.') }
        format.xml  { render :xml => @requisition, :status => :created, :location => @requisition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @requisition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /requisitions/1
  # PUT /requisitions/1.xml
  def update
    @requisition = Requisition.find(params[:id])

    respond_to do |format|
      if @requisition.update_attributes(params[:requisition])
        format.html { redirect_to(@requisition, :notice => 'Requisition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @requisition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /requisitions/1
  # DELETE /requisitions/1.xml
  def destroy
    @requisition = Requisition.find(params[:id])
    @requisition.destroy

    respond_to do |format|
      format.html { redirect_to(requisitions_url) }
      format.xml  { head :ok }
    end
  end
end
