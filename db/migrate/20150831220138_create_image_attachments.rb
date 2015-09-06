class CreateImageAttachments < ActiveRecord::Migration
  def change
    create_table :image_attachments do |t|
      t.integer :product_id
      t.string :image

      t.timestamps
    end
  end
end
