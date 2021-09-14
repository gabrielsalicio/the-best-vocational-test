Sequel.migration do 
    up do
        add.column :careers, :description, String
        add.column :careers, :image, String
    end
    
    down do
        drop.column :careers, :description
        drop.column :careers, :image
    end
end