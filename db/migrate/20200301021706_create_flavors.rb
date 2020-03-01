class CreateFlavors < ActiveRecord::Migration[5.2]
  def change
    create_table :flavors do |t|
      t.string :name
      t.integer :purchace_price
      t.integer :summit_price
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
