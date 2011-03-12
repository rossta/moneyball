require 'active_record/acts/list'

ActiveRecord::Base.class_eval do
  include ActiveRecord::Acts::List
end
