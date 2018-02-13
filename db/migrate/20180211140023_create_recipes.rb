class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string "title"
      t.string "description"
      t.string "directions"
      t.string "recipe_photo"
      t.timestamps
    end
  end
end
