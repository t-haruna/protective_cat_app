class CreateBillings < ActiveRecord::Migration[6.0]
  def change
    create_table :billings do |t|
      t.integer :count_1
      t.integer :count_2 
      t.integer :count_3
      t.integer :user_id
      t.integer :project_id
      t.timestamps
    end
  end
end
