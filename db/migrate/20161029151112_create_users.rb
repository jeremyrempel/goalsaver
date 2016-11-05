class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fname, limit: 50, null: false
      t.string :lname, limit: 50, null: false
      t.string :email, limit: 128, null: false
      t.timestamps
    end
    
  add_index :users, :email, unique: true
  end
end
