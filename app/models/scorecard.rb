class Scorecard < ActiveRecord::Base

  belongs_to :course

  has_many :holes, :dependent => :destroy

  after_create :create_holes


  def front_nine
    holes.where(:number.lt => 10)
  end

  def back_nine
    holes.where(:number.gt => 10)
  end

  protected

  def create_holes
    18.times do |i|
      holes.build(:number => i + 1, :course => course)
    end
    save!
  end
end
