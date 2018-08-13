class AddColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :developer, foreign_key: true
  end
end
