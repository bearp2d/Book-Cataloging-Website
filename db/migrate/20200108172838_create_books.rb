class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.references :author, foreign_key: true
      t.references :genre, foreign_key: true
      t.text :description, null: false
      t.integer :isbn, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
