class AddNameToBookmarks < ActiveRecord::Migration[7.1]
  def change
    add_column :bookmarks, :name, :string
  end
end
