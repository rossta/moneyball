class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def find_parent
    @parent = begin
      if params[:scorecard_id]
        @scorecard = Scorecard.find(params[:scorecard_id])
      elsif params[:course_id]
        @course = Course.find(params[:course_id])
      end
    end
  end

end
