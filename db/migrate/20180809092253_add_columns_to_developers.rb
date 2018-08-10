class AddColumnsToDevelopers < ActiveRecord::Migration[5.2]
  def change
    add_column :developers, :provider, :string
    add_column :developers, :uid, :string
  end
end
