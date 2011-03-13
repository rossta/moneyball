class Scorecard < ActiveRecord::Base
  include Extensions::Holes
  
  belongs_to :course
  
  
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
end
