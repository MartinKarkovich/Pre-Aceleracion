class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :date_of_creation
      t.decimal :rating

      t.timestamps
    end
  end
end
