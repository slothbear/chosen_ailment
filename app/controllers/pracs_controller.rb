class PracsController < ApplicationController
  # GET /pracs
  # GET /pracs.xml
  def index
    @pracs = Prac.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pracs }
    end
  end

  # GET /pracs/1
  # GET /pracs/1.xml
  def show
    @prac = Prac.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prac }
    end
  end

  # GET /pracs/new
  # GET /pracs/new.xml
  def new
    @prac = Prac.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prac }
    end
  end

  # GET /pracs/1/edit
  def edit
    @prac = Prac.find(params[:id])
  end

  # POST /pracs
  # POST /pracs.xml
  def create
    ailment_id, prac_params = isolate_id(:ailment_id, params[:prac])
    @prac = Prac.new(prac_params)
    @prac.ailment = Ailment.find_or_new_name(ailment_id)

    respond_to do |format|
      if @prac.save
        format.html { redirect_to(@prac, :notice => 'Prac was successfully created.') }
        format.xml  { render :xml => @prac, :status => :created, :location => @prac }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prac.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pracs/1
  # PUT /pracs/1.xml
  def update
    @prac = Prac.find(params[:id])

    respond_to do |format|
      if @prac.update_attributes(params[:prac])
        format.html { redirect_to(@prac, :notice => 'Prac was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prac.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pracs/1
  # DELETE /pracs/1.xml
  def destroy
    @prac = Prac.find(params[:id])
    @prac.destroy

    respond_to do |format|
      format.html { redirect_to(pracs_url) }
      format.xml  { head :ok }
    end
  end
end
