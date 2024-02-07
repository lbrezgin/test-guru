module TestPassagesHelper
  def actual_question(test_passage)
    for i in 0..test_passage.test.questions.count
      if (test_passage.test.questions[i] == test_passage.current_question)
        return i+1
      end
    end
  end
end
