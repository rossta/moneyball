class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :setup_mobile_device

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

  def mobile_device?
    if session[:mobile]
      session[:mobile] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
  helper_method :mobile_device?

  def setup_mobile_device
    session[:mobile] = params[:mobile] if params[:mobile]
    request.format = :mobile if mobile_device?
  end
end
