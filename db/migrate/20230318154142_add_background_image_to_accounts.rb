class AddBackgroundImageToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :background_image, :string
  end
end
