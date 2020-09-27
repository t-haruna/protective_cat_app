class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.text :title,              null: false
      t.text :image,              null: false
      t.text :text,               null: false
      t.text :profile,            null: false
      t.integer :target_amount,   null: false
      t.date :tarm,               null: false
      t.string  :return_title_1,  null: false
      t.integer :return_price_1,  null: false
      t.string  :return_title_2
      t.integer :return_price_2
      t.string  :return_title_3
      t.integer :return_price_3
      t.timestamps
    end
  end
end
