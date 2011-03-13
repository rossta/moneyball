class MakeHolePolymorphic < ActiveRecord::Migration
  def self.up
    rename_column :holes, :scorecard_id, :parent_id
    add_column :holes, :parent_type, :string, :default => "Scorecard"
    remove_column :holes, :course_id
  end

  def self.down
    add_column :holes, :course_id, :integer
    remove_column :holes, :parent_type
    rename_column :holes, :parent_id, :scorecard_id
  end
end