class CreateHoles < ActiveRecord::Migration
  def self.up
    create_table :holes do |t|
      t.integer :scorecard_id
      t.integer :number
      t.integer :score
      t.integer :par
      t.integer :yards
      t.integer :course_id

      t.timestamps
    end

    add_index :holes, :scorecard_id
    add_index :holes, :course_id
  end

  def self.down
    remove_index :holes, :course_id
    remove_index :holes, :scorecard_id

    drop_table :holes
  end
end