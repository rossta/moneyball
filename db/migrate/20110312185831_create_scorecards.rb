class CreateScorecards < ActiveRecord::Migration
  def self.up
    create_table :scorecards do |t|
      t.string :name
      t.integer :course_id
      t.datetime :recorded_on

      t.timestamps
    end
  end

  def self.down
    drop_table :scorecards
  end
end
