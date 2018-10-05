class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :image
      t.string :name
      t.integer :price
      t.text :body
      t.integer :brand
      t.integer :category
      t.integer :country

      t.timestamps
    end
  end
end
