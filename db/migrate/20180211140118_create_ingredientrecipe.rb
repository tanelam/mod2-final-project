class CreateIngredientrecipe < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredientrecipe do |t|
      t.integer "recipe_id"
      t.integer "ingredient_id"
      t.timestamps
    end
  end
end
