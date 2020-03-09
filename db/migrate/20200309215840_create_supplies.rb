class CreateSupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :supplies do |t|
      t.string :name
      t.integer :price
      t.integer :amount_s
      t.integer :amount_m
      t.integer :amount_l

      t.timestamps
    end
  end
end
