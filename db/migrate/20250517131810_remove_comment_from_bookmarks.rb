class RemoveCommentFromBookmarks < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookmarks, :comment, :text
  end
end
