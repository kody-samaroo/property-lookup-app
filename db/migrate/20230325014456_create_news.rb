class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.references :account
      t.string :title
      t.string :content
      t.string :photo

      t.timestamps
    end
  end
end
