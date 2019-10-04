class Addrestaurantidtopizzas < ActiveRecord::Migration[5.1]
  def change
    add_column :pizzas, :restaurant_id, :integer
    add_index :pizzas, :restaurant_id
  end
end
