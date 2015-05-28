class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :theme
      t.string :title
      t.string :imdb
      t.string :poster

      t.timestamps null: false
    end
  end
end
