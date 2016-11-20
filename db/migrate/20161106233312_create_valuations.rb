class CreateValuations < ActiveRecord::Migration[5.0]
  def change
    create_table :valuations do |t|
      t.integer :user_id
      t.integer :asslib_id
      t.integer :year
      t.string :period
      t.decimal :value

      t.timestamps
    end
    add_foreign_key :valuations, :users
    add_foreign_key :valuations, :asslibs
  end
end
