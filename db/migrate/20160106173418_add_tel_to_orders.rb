class AddTelToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :tel, :string
  end
end
