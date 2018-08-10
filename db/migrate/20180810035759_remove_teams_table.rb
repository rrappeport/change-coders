class RemoveTeamsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :team_id
    drop_table :teams
  end
end
