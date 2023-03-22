class AddStatusToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :status, :string
  end
end
