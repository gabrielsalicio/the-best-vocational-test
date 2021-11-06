class Outcome < Sequel::Model
  many_to_one :choice
  many_to_one :career

  def validate
    super
    errors.add(:choice_id, name: 'choice_id cant be nil') if choice_id.nil? || !choice_id
    errors.add(:career_id, name: 'career_id cant be nil') if career_id.nil? || !career_id
  end
end
