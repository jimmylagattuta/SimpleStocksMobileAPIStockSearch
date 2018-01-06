class CreateUserStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_stocks do |t|
      t.integer :user_id
      t.string :symbol
      t.integer :purchase_pps
      t.integer :current_pps
      t.integer :sale_pps
      t.integer :quantity

      t.timestamps
    end
  end
end
