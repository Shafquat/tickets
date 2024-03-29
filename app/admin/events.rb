ActiveAdmin.register Event do
    
    config.sort_order = "id_asc"
    config.per_page = 100
    permit_params :title, :description, :date, :venue_id
      
    index do
        selectable_column
        column :title
        column :description
        column :date
        column :venue_id
        actions
    end
    
end