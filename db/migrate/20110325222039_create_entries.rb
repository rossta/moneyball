class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.integer :scorecard_id
      t.string  :name
      t.integer :position

      t.timestamps
    end

    add_index :entries, :scorecard_id
  end

  def self.down
    remove_index :entries, :scorecard_id
    drop_table :entries
  end
end