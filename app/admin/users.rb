ActiveAdmin.register User do
    
    config.sort_order = "id_asc"
    config.per_page = 100
    permit_params :username, :description, :email, :number, :trusted
      
    index do
        selectable_column
		column :username
		column :description
        column :email
        column :number
        column :trusted
        actions
    end
    
end