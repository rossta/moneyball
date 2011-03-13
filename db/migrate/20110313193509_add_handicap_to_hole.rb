class AddHandicapToHole < ActiveRecord::Migration
  def self.up
    add_column :holes, :handicap, :integer
  end

  def self.down
    remove_column :holes, :handicap
  end
end