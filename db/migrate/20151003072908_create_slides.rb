class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :title
      t.string :image
      t.string :text

      t.timestamps
    end
  end
end
