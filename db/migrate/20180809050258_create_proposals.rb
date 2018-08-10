class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      t.references :developer, foreign_key: true
      t.references :project, foreign_key: true
      t.string :state, default: 'Pending'

      t.timestamps
    end
  end
end
