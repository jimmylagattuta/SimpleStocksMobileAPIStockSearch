class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.integer :cash
      t.integer :stock_capital

      t.timestamps
    end
  end
end
