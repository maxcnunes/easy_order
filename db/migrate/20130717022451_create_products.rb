class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.boolean :active
      t.boolean :out_of_stock
      t.string :picture_url

      t.timestamps
    end
  end
end
