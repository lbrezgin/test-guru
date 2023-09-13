ruby = Category.create(title: 'Ruby')
python = Category.create(title: 'Python')
java = Category.create(title: 'Java')

ruby_test = Test.create(title: 'Ruby Basics', level: 1, category_id: ruby.id)
python_test = Test.create(title: 'Python Fundamentals', level: 2, category_id: python.id)
java_test = Test.create(title: 'Java Programming', level: 3, category_id: java.id)

ruby_guestion = Question.create(body: 'What is Ruby?', test_id: ruby_test.id)
python_question = Question.create(body: 'How do you define a Python function?', test_id: python_test.id)
java_question = Question.create(body: 'What is the main feature of Java?', test_id: java_test.id)

ruby_answer = Answer.create(body: 'Ruby is a dynamic, open-source programming language.', correct: true, question_id: ruby_guestion.id)
python_answer = Answer.create(body: 'A Python function is defined using the "def" keyword.', correct: true, question_id: python_question.id)
java_answer = Answer.create(body: 'Java is known for its "write once, run anywhere" capability.', correct: true, question_id: java_question.id)

user1 = User.create(result: 10, test_id: ruby_test.id)
user2 = User.create(result: 9, test_id: python_test.id)
user3 = User.create(result: 8, test_id: java_test.id)

