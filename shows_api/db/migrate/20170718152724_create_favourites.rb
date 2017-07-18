class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.references :show, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
