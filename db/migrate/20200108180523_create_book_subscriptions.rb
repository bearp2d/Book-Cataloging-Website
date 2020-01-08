class CreateBookSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :book_subscriptions do |t|
      t.references :book, foreign_key: true
      t.references :bookshelf, foreign_key: true

      t.timestamps
    end
  end
end
