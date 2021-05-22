class Response < Sequel::Model
    one_to_one :choice
    many_to_one :question
    many_to_one :survey
end