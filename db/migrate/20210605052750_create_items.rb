class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name,                 null: false
      t.string :text,                 null: false
      t.integer :shipping_charges_id, null: false
      t.integer :prefectures_id,      null: false
      t.integer :shipping_date_id,    null: false
      t.string :price,                null: false
      t.references :user,             foreign_key: true

      t.timestamps
    end
  end
end
