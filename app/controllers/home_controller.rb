class HomeController < ApplicationController

  def index
    @tournaments = Tournament.limit(5).order("id DESC")
  end
end