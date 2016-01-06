class AddColumnsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :series, :integer
    add_column :orders, :number, :integer
    add_column :orders, :issue, :text
  end
end
