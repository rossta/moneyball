module Extensions

  module Holes
    module ClassMethods
    
    end
  
    module InstanceMethods
    
      def front_nine
        holes.where(:number.lt => 10).order("number ASC")
      end

      def back_nine
        holes.where(:number.gte => 10).order("number ASC")
      end

      protected

      def create_holes
        18.times do |i|
          holes.build(:number => i + 1)
        end
        save!
      end

    end
  
    def self.included(base)
      base.extend         ClassMethods
      base.send :include, InstanceMethods
    
      base.has_many :holes, :as => :parent, :dependent => :destroy

      base.after_create :create_holes
    end
  end

end
