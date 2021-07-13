class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.belongs_to :genre
      t.string :image
      t.string :title
      t.date :date_of_creation
      t.decimal :rating, precision: 10, scale: 2

      t.timestamps
    end
  end
end
