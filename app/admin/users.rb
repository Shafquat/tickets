ActiveAdmin.register User do
    
    config.sort_order = "id_asc"
    config.per_page = 100
    permit_params :email, :number, :trusted
      
    index do
        selectable_column
        column :email
        column :number
        column :trusted
        actions
    end
    
end