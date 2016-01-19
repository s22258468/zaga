class CreateCoats < ActiveRecord::Migration
  def change
    create_table :coats do |t|
      t.string :name
      t.integer :price
      t.integer :sell
      t.integer :stock
      t.date :date
      t.string :info

      t.timestamps null: false
    end
  end
end
