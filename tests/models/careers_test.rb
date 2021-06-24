require File.expand_path '../../test_helper.rb', __FILE__

class CareerTest < Minitest::Unit::TestCase
    Minitest::Unit::TestCase

    def test_career_may_has_many_surveys
        # Arrange -> create data to test
        career = Career.create(name: 'Spaceman')
        # Act -> run test
        Survey.create(username: 'User1', career_id: career.id)
        Survey.create(username: 'User2', career_id: career.id)
        Survey.create(username: 'User3', career_id: career.id)
        # Assert -> whats happend?
        assert_equal(career.surveys.count, 3)
    end

    def test_career_must_has_name
        # Arrange
        career1 = Career.new
        career2 = Career.new
        career3 = Career.new
        # Act
        career1.name = 'Medicina'
        career2.name = nil
        career3.name = ''
        # Assert
        assert_equal(career1.valid?, true)
        assert_equal(career2.valid?, false)
        assert_equal(career3.valid?, false)
      end

end