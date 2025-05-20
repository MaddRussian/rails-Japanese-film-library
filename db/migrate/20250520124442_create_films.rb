class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :title
      t.string :director
      t.text :synopsis
      t.integer :year

      t.timestamps
    end
  end
end
