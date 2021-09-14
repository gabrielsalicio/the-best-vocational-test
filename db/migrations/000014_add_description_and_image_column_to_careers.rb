Sequel.migration do 
    up do
        add_column :careers, :description, String
        add_column :careers, :image, String
    end
    
    down do
        drop_column :careers, :description
        drop_column :careers, :image
    end
end