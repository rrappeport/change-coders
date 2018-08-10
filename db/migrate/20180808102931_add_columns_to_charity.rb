class AddColumnsToCharity < ActiveRecord::Migration[5.2]
  def change
    add_column :charities, :name, :string
    add_column :charities, :logo, :string
    add_column :charities, :website, :string
    add_column :charities, :description, :text
    add_column :charities, :address, :string
    add_column :charities, :category, :string
  end
end
