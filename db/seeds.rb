ruby_cat = Category.create(title: 'Ruby on Rails')
python_cat = Category.create(title: 'Python')
java_cat = Category.create(title: 'Java')

user_lev = User.create(result: 0, email: "lewickbrez@gmail.com")
user_george = User.create(result: 0, email: "lyridme@gmail.com")

ruby_test = Test.new(title: 'Ruby basics', level: 5, category_id: ruby_cat.id, user_id: user_lev.id)
python_test = Test.new(title: 'Python basics', level: 1, category_id: python_cat.id, user_id: user_lev.id)
python_test2 = Test.new(title: 'Algorithms in python', level: 2, category_id: python_cat.id, user_id: user_lev.id)
java_test = Test.new(title: 'Java basics', level: 8, category_id: java_cat.id, user_id: user_lev.id)

ruby_test.save
python_test.save
python_test2.save
java_test.save

user_lev.test_id = ruby_test.id
user_lev.save

question = Question.create(body: 'Are Ruby are object oriented language?', test_id: ruby_test.id)
answer = Answer.create(body: 'Yes', correct: true, question_id: question.id)
