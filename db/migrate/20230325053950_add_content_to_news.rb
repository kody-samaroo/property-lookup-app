class AddContentToNews < ActiveRecord::Migration[6.1]
  def change
    add_column :news, :content, :text
  end
end
