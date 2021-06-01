class Career < Sequel::Model
    one_to_many :surveys
    one_to_many :outcomes
    one_to_many :choices

    def validate 

        super
        errors.add(:name, :name => 'cant be nil or empty') if name.nil? || name.empty?

    end
end
