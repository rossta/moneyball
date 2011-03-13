class Course < ActiveRecord::Base
  include Extensions::Holes
  
  has_many :scorecards, :dependent => :nullify
  
  validates_presence_of :name
  
  def hole_description(hole)
    "Hole #{hole.number} is a par #{hole.par} measuring #{hole.yards} yards with handicap #{hole.handicap}"
  end
end
