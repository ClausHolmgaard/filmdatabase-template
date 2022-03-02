class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.datetime :release_date
      t.string :genre
      t.string :director
      t.string :actors
      t.text :plot
      t.string :image_url

      t.timestamps
    end
  end
end
