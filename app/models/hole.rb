class Hole < ActiveRecord::Base

  belongs_to :parent, :polymorphic => true
  
  scope :front_nine , where(:number.lt => 10).order("number ASC")
  scope :back_nine  , where(:number.gte => 10).order("number ASC")
  
  def description
    parent.hole_description(self)
  end
end
