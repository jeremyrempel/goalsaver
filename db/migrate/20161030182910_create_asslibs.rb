class CreateAsslibs < ActiveRecord::Migration[5.0]
  def change
    create_table :asslibs do |t|
      t.string :name
      t.text :description
      t.string :altype
      t.boolean :active
      t.string :currency
      t.integer :user_id

      t.timestamps
    end
  end
end
