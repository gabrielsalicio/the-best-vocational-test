require File.expand_path '../../test_helper.rb', __FILE__

class SurveyTest < Minitest::Unit::TestCase
    Minitest::Unit::TestCase

    def test_survey_must_has_username
        #Arrange
        survey1 = Survey.new
        survey2 = Survey.new

        #Act
        survey1.username = nil        
        survey2.username = ''

        #Assert
        assert_equal(survey1.valid?, false)
        assert_equal(survey2.valid?, false)

    end

    def test_survey_has_a_career
        #Arrange    
        career = Career.create(name: 'Computacion')

        #Act    
        survey = Survey.create(username: 'User 1', career_id: career.id)

        #Assert
        assert_equal(career.surveys.count, 1)
    end

end