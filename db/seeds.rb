

Category.destroy_all

category = ["Soups", "Salads", "Desserts", "Drinks"]

category.each do |category|
  Category.create(name: category)
end
