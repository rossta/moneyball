class Course < ActiveRecord::Base
  
  has_many :holes, :dependent => :nullify
  has_many :scorecards, :dependent => :nullify
end
