require File.expand_path '../../test_helper.rb', __FILE__

class QuestionTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
  

  def test_question_may_has_many_choices
    # Arrange

    question = Question.create(name: 'Question test', description: 'First Question', number: '1', type: 'personal')
    # Act

    Choice.create(text: 'Choice1', question_id: question.id)
    Choice.create(text: 'Choice2', question_id: question.id)
    Choice.create(text: 'Choice3', question_id: question.id)
    Choice.create(text: 'Choice4', question_id: question.id)
    # Assert
    
    assert_equal(question.choices.count, 4)
  end

end