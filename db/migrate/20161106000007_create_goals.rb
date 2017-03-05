class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.belongs_to :user
      t.string :name, limit: 50, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.decimal :start_value, null: false
      t.decimal :rate_of_return, :default => 0, null: false
      t.decimal :rate_of_savings, :default => 0, null: false
      t.string :currency, :precision => 8, :scale => 2, null: false
      t.timestamps
    end
    add_foreign_key :goals, :users
  end
end
