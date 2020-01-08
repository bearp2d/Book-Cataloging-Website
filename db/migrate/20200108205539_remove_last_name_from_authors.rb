class RemoveLastNameFromAuthors < ActiveRecord::Migration[5.2]
  def change
    remove_column :authors, :last_name, :string
  end
end
