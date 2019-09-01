class AddVenueIdToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :venue_id, :integer
    add_index :events, :venue_id
  end
end
