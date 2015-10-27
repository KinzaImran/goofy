class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :user_id
      t.text :description
      t.integer :subcategory_id
      t.decimal :initial_price
      t.decimal :selling_price
      t.string :availibility
      t.date :opening_date
      t.date :closing_date

      t.timestamps null: false
    end
  end
end
