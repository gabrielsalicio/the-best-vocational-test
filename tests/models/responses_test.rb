require File.expand_path '../../test_helper.rb', __FILE__

class ResponseTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
  
    def test_response_may_has_question_choice_and_survey
        # Arrange
        response1 = Response.new
        response2 = Response.new
        response3 = Response.new
        response4 = Response.new
        question = Question.create(:name => 'Question', :description => 'description', :number => 1, :type => 'personal')
        choice = Choice.create(:text => 'choice')
        survey = Survey.create(:username => "User")
        # Act
        response1.question_id = question.id
        response1.choice_id   = choice.id
        response1.survey_id   = survey.id

        response2.question_id = question.id
        response2.choice_id   = choice.id
    
        response3.choice_id   = choice.id
        response3.survey_id   = survey.id
    
        response4.survey_id   = survey.id
        response4.question_id = question.id
    
    
        # Assert
        assert_equal(response1.valid?, true)
        assert_equal(response2.valid?, false)
        assert_equal(response3.valid?, false)
        assert_equal(response4.valid?, false)
    end
end