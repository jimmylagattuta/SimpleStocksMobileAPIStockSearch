class ChangeColumnsInUSerSTocks < ActiveRecord::Migration[5.0]
  def change
  	change_column :user_stocks, :user_id, :decimal, precision: 9, scale: 2
  	change_column :user_stocks, :purchase_pps, :decimal, precision: 9, scale: 2
  	change_column :user_stocks, :current_pps, :decimal, precision: 9, scale: 2
  	change_column :user_stocks, :sale_pps, :decimal, precision: 9, scale: 2
  	change_column :user_stocks, :quantity, :decimal, precision: 9, scale: 2
  end
end
