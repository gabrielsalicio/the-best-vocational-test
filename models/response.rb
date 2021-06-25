class Response < Sequel::Model
    one_to_one :choice
    many_to_one :question
    many_to_one :survey

    def validate
        super
        errors.add(:choice_id,   :name => 'choice_id cant be nil')   if not (choice_id)   or (choice_id == nil)
        errors.add(:question_id, :name => 'question_id cant be nil') if not (question_id) or (question_id == nil)
        errors.add(:survey_id,   :name => 'survey_id cant be nil')   if not (survey_id)   or (survey_id == nil)
    end
end