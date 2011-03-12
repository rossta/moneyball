class Hole < ActiveRecord::Base

  belongs_to :scorecard
  belongs_to :course

  def score_description
    return "" unless score && par
    
    diff = score - par
    score_term = case diff
    when -2 then "eagle"
    when -1 then "birdie"
    when 0 then "par"
    when 1 then "bogie"
    when 2 then "double bogie"
    end
    
    "You got a #{score_term} on hole #{number}"
  end
end
