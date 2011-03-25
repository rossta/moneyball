class HolesController < ApplicationController
  before_filter :find_parent
  
  def show
    @hole = Hole.find(params[:id])
  end

  def edit
    @hole = Hole.find(params[:id])
  end

  def create
    @hole = Hole.new(params[:hole])
    
    respond_to do |format|
      if @hole.save
        format.html { redirect_to(@parent, :notice => @hole.score_description) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @hole = Hole.find(params[:id])

    respond_to do |format|
      if @hole.update_attributes(params[:hole])
        format.html { redirect_to(@parent, :notice => @hole.description) }
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

end
