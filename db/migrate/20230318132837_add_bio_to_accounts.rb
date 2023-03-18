class AddBioToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :bio, :text
  end
end
