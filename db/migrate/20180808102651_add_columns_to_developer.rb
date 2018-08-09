class AddColumnsToDeveloper < ActiveRecord::Migration[5.2]
  def change
    add_column :developers, :first_name, :string
    add_column :developers, :last_name, :string
    add_column :developers, :description, :text
    add_column :developers, :experience, :text
    add_column :developers, :github_username, :string
    add_column :developers, :address, :string
    add_column :developers, :linkedin_username, :string
    add_column :developers, :avatar, :string
    add_column :developers, :birth_date, :date
  end
end
