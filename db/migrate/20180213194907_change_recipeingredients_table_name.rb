class ChangeRecipeingredientsTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :ingredientrecipe, :ingredientrecipes
  end
end
