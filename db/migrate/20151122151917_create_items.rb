class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :currency
      t.float :price
      t.string :category

      t.timestamps null: false
    end
  end
end
