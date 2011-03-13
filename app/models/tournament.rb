class Tournament < ActiveRecord::Base

  belongs_to :course
  has_many :scorecards
end
