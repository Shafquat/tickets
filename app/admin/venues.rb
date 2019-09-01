ActiveAdmin.register Event do
    
    config.sort_order = "id_asc"
    config.per_page = 100
    permit_params :name, :description, :address
      
    index do
        selectable_column
        column :name
        column :description
        column :address
        actions
    end
    
end