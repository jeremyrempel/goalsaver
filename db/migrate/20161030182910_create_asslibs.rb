class CreateAsslibs < ActiveRecord::Migration[5.0]
  def change
    create_table :asslibs do |t|
      t.belongs_to :user
      t.string :name, null: false
      t.text :description
      t.string :altype, null: false
      t.boolean :active, null: false, :default => true
      t.string :currency, null: false
      t.timestamps
    end
    add_foreign_key :asslibs, :users
  end
end
