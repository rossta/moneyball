class Tournament < ActiveRecord::Base

  belongs_to :course
  has_many :scorecards
  
  validates_presence_of :course, :name
end
