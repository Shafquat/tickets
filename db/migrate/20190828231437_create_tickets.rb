class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :section
      t.string :row
      t.decimal :price
      t.string :seats

      t.timestamps
    end
  end
end
