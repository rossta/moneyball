class EntriesController < ApplicationController

  before_filter :find_parent

  def new
    @entry = Entry.new do |e|
      e.scorecard = @scorecard
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.new(params[:entry])

    if @entry.save
      redirect_to(@scorecard, :notice => 'Entry was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @entry = Entry.find(params[:id])

    if @entry.update_attributes(params[:entry])
      redirect_to(@scorecard, :notice => 'Entry was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to(@scorecard, :notice => 'Entry was successfully deleted.')
  end
end
