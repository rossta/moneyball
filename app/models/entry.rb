class Entry < ActiveRecord::Base
  include Extensions::Holes

  belongs_to :scorecard
end
