class AddColumnToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :leader_id, :integer
  end
end
