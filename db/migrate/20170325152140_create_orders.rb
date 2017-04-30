class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :quantity
      t.boolean :status
      t.date :expire_at
      t.references :item, foreign_key: true
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
