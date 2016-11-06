class CreateValuations < ActiveRecord::Migration[5.0]
  def change
    create_table :valuations do |t|
      t.integer :user_id
      t.integer :asslib_id
      t.int :year
      t.string :period
      t.decimal :value

      t.timestamps
    end
  end
end
