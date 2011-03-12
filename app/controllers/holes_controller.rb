class HolesController < ApplicationController
  before_filter :find_parent

  # GET /holes
  # GET /holes.xml
  def index
    @holes = Hole.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @holes }
    end
  end

  def show
    @hole = Hole.find(params[:id])
  end

  def new
    @hole = Hole.new do |hole|
      hole.scorecard  = @scorecard
      hole.course     = @scorecard.course
    end
  end

  def edit
    @hole = Hole.find(params[:id])
  end

  def create
    @hole = Hole.new(params[:hole]) do |hole|
      hole.scorecard = @scorecard
      hole.course    = @scorecard.course
    end

    respond_to do |format|
      if @hole.save
        format.html { redirect_to(@scorecard, :notice => @hole.score_description) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @hole = Hole.find(params[:id])

    respond_to do |format|
      if @hole.update_attributes(params[:hole])
        format.html { redirect_to(@scorecard, :notice => @hole.score_description) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /holes/1
  # DELETE /holes/1.xml
  def destroy
    @hole = Hole.find(params[:id])
    @hole.destroy

    respond_to do |format|
      format.html { redirect_to(holes_url) }
      format.xml  { head :ok }
    end
  end

  protected

  def find_parent
    @parent = @scorecard = Scorecard.find(params[:scorecard_id])
  end
end
