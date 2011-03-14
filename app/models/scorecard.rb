class Scorecard < ActiveRecord::Base
  include Extensions::Holes

  belongs_to :course
  belongs_to :tournament
  
  validates_presence_of :course, :name

  def hole_description(hole)
    return "" unless hole.score && hole.par
    diff = hole.score - hole.par
    score_term = case diff
    when -2 then "eagle"
    when -1 then "birdie"
    when 0 then "par"
    when 1 then "bogie"
    when 2 then "double bogie"
    end

    "You got a #{score_term} on hole #{hole.number}"
  end
  
  def scoreable?
    true
  end

  protected

  def create_holes
    course.holes.each do |hole|
      holes.build(hole.attributes)
    end
    save!
  end

end
