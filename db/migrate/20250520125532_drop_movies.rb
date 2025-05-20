class DropMovies < ActiveRecord::Migration[7.1]
  def change
    drop_table :movies, force: :cascade
  end
end
