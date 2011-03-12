class ScorecardsController < ApplicationController
  # GET /scorecards
  # GET /scorecards.xml
  def index
    @scorecards = Scorecard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scorecards }
    end
  end

  # GET /scorecards/1
  # GET /scorecards/1.xml
  def show
    @scorecard = Scorecard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scorecard }
    end
  end

  # GET /scorecards/new
  # GET /scorecards/new.xml
  def new
    @scorecard = Scorecard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scorecard }
    end
  end

  # GET /scorecards/1/edit
  def edit
    @scorecard = Scorecard.find(params[:id])
  end

  # POST /scorecards
  # POST /scorecards.xml
  def create
    @scorecard = Scorecard.new(params[:scorecard])

    respond_to do |format|
      if @scorecard.save
        format.html { redirect_to(@scorecard, :notice => 'Welcome to the Bethpage Black.') }
        format.xml  { render :xml => @scorecard, :status => :created, :location => @scorecard }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scorecard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scorecards/1
  # PUT /scorecards/1.xml
  def update
    @scorecard = Scorecard.find(params[:id])

    respond_to do |format|
      if @scorecard.update_attributes(params[:scorecard])
        format.html { redirect_to(@scorecard, :notice => 'Scorecard was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scorecard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scorecards/1
  # DELETE /scorecards/1.xml
  def destroy
    @scorecard = Scorecard.find(params[:id])
    @scorecard.destroy

    respond_to do |format|
      format.html { redirect_to(scorecards_url) }
      format.xml  { head :ok }
    end
  end
end
