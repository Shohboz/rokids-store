class CreateLineItemAttributes < ActiveRecord::Migration
  def change
    create_table :line_item_attributes do |t|
      t.references :product_attribute, index: true
      t.belongs_to :line_item, index: true

      t.timestamps
    end
  end
end
