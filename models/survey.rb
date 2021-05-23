class Survey < Sequel::Model
    one_to_many :responses
    many_to_one :career

    def validate
        super
        errors.add(:username, 'cannot be empty') if !username || username.empty?
    end
end