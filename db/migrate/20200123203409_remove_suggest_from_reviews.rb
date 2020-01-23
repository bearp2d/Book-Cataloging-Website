class RemoveSuggestFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :suggest, :string
  end
end
