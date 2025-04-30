class CreateItems < ActiveRecord::Migration[7.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :tag
      t.integer :price
      t.date :purchased_at
      t.string :shop

      t.timestamps
    end
  end
end
