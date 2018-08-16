class ChangeStateInProposals < ActiveRecord::Migration[5.2]
  def change
    change_column :proposals, :state, :string, default: "pending"
  end
end
