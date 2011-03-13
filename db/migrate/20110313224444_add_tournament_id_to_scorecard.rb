class AddTournamentIdToScorecard < ActiveRecord::Migration
  def self.up
    add_column :scorecards, :tournament_id, :integer
  end

  def self.down
    remove_column :scorecards, :tournament_id
  end
end