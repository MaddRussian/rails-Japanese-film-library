class AddPosterColumnToFilms < ActiveRecord::Migration[7.1]
  def change
    add_column :poster
  end
end
