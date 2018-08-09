class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :type
      t.string :status
      t.date :deadline
      t.string :github
      t.references :charity, foreign_key: true

      t.timestamps
    end
  end
end
