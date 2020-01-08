class CreateBookshelves < ActiveRecord::Migration[5.2]
  def change
    create_table :bookshelves do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
