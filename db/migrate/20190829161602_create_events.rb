class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
