class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :image
      t.string :name
      t.integer :price
      t.text :body
      t.integer :brand, default: 0, null: false
      t.integer :category, default: 0, null: false
      t.integer :country, default: 0, null: false

      t.timestamps
    end
  end
end
