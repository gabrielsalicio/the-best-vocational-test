Sequel.migration do
  up do
    drop_column :careers, :description
    drop_column :careers, :duration
  end

  down do
    add_column :careers, :description, String
    add_column :careers, :duration, Integer
  end
