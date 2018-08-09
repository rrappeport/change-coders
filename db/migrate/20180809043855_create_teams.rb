class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.references :developer, foreign_key: true
      t.references :project, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
