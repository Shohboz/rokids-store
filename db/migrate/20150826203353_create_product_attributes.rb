class CreateProductAttributes < ActiveRecord::Migration
  def change
    create_table :product_attributes do |t|
      t.string :value
      t.decimal :price
      t.string :title
      t.belongs_to :product, index: true

      t.timestamps
    end
  end
end
