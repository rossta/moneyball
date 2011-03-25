class ScorecardsController < ApplicationController

  before_filter :find_tournament

  def index
    @scorecards = Scorecard.all
  end

  def show
    @scorecard = Scorecard.includes(:holes).find(params[:id])
  end

  def new
    @scorecard = Scorecard.new do |s|
      s.tournament = @tournament
    end

    4.times { |i| @scorecard.entries.build(:position => i + 1) }
  end

  def edit
    @scorecard = Scorecard.find(params[:id])
  end

  def create
    @scorecard = Scorecard.new(params[:scorecard])

    if @scorecard.save
      notice = "Welcome to the #{@scorecard.course.name}."
      notice << " Good luck in #{@scorecard.tournament.name}." if @scorecard.tournament.present?
      redirect_to(@scorecard, :notice => notice)
    else
      render :action => "new"
    end
  end

  def update
    @scorecard = Scorecard.find(params[:id])

    if @scorecard.update_attributes(params[:scorecard])
      redirect_to(@scorecard, :notice => 'Scorecard was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @scorecard = Scorecard.find(params[:id])
    @scorecard.destroy

    redirect_to(scorecards_url)
  end

  protected

  def find_tournament
    @tournament = Tournament.find(params[:tournament_id]) if params[:tournament_id]
  end
end
