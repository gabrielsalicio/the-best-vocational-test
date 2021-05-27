class Choice < Sequel::Model
    one_to_one :response
    many_to_one :question
    one_to_many :outcomes


    def validate 
        super
        errors.add(:text, :text => 'cant be nil or empty') if text.nil? || text.empty?
    
    end
end