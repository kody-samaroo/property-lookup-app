class AddAuthorToNews < ActiveRecord::Migration[6.1]
  def change
    add_column :news, :author, :string
  end
end
