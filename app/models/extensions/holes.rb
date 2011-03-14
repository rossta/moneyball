module Extensions

  module Holes
    module ClassMethods
    end

    module InstanceMethods

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

      base.has_many :holes, :as => :parent, :dependent => :destroy, :order => :number

      base.accepts_nested_attributes_for :holes

      base.after_create :create_holes
    end
  end

end
