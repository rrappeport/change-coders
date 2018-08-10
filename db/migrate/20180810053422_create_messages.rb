class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.string :sender_type
      t.text :content
      t.references :chatroom, foreign_key: true

      t.timestamps
    end
  end
end
