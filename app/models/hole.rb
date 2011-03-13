class Hole < ActiveRecord::Base

  belongs_to :parent, :polymorphic => true

  def description
    parent.hole_description(self)
  end
end
