ActiveAdmin.register Ticket do
    
    config.sort_order = "id_asc"
    config.per_page = 100
    permit_params :section, :row, :seats, :price, :user
      
    index do
        selectable_column
        column :section
        column :row
        column :seats
        column :price
		column :user
        actions
    end
    
end