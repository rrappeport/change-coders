class ChangeColumnInProjects < ActiveRecord::Migration[5.2]
  def change
    rename_column :projects, :type, :work_type
  end
end
