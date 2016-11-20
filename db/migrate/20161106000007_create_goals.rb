class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.date :date
      t.decimal :value
      t.string :currency, :precision => 8, :scale => 2
      t.integer :user_id

      t.timestamps
    end
    add_foreign_key :goals, :users
  end
end
