class HomeController < ApplicationController

  def index
    @tournaments = Tournament.limit(5).order("id DESC")
    @courses = Course.limit(5).order("created_at DESC")
  end
end