class AddAvailableQuantityToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :remaining_quantity, :integer
  end
end
