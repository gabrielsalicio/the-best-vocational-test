class Survey < Sequel::Model
  one_to_many :responses
  many_to_one :career

  def validate
    super
    errors.add(:username, 'cannot be empty') if !username || username.empty?
  end

  dataset_module do
    def number_of_carrers_between_dates(begin_date, end_date, select_career)
      where(
        created_at: begin_date..end_date,
        career_id: select_career
      ).all
    end
  end
end
