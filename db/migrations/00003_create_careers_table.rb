Sequel.migration do
    up do
      create_table(:careers) do
        primary_key   :id
        String        :name
        Integer       :duration
        DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
        DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
      end
    end
  
    down do
      drop_table(:careers)
    end
  end