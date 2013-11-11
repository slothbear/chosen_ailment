class AilmentsController < ApplicationController
  # GET /ailments
  # GET /ailments.xml
  def index
    @ailments = Ailment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ailments }
    end
  end

  # GET /ailments/1
  # GET /ailments/1.xml
  def show
    @ailment = Ailment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ailment }
    end
  end

  # GET /ailments/new
  # GET /ailments/new.xml
  def new
    @ailment = Ailment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ailment }
    end
  end

  # GET /ailments/1/edit
  def edit
    @ailment = Ailment.find(params[:id])
  end

  # POST /ailments
  # POST /ailments.xml
  def create
    @ailment = Ailment.new(params[:ailment])

    respond_to do |format|
      if @ailment.save
        format.html { redirect_to(@ailment, :notice => 'Ailment was successfully created.') }
        format.xml  { render :xml => @ailment, :status => :created, :location => @ailment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ailment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ailments/1
  # PUT /ailments/1.xml
  def update
    @ailment = Ailment.find(params[:id])

    respond_to do |format|
      if @ailment.update_attributes(params[:ailment])
        format.html { redirect_to(@ailment, :notice => 'Ailment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ailment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ailments/1
  # DELETE /ailments/1.xml
  def destroy
    @ailment = Ailment.find(params[:id])
    @ailment.destroy

    respond_to do |format|
      format.html { redirect_to(ailments_url) }
      format.xml  { head :ok }
    end
  end
end
