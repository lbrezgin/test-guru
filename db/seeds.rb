admin = Admin.create(first_name: "Lewick", last_name: "Admin", email: "lewickbrez@gmail.com", password: "qwerty123456789")

cat1 = Category.create(title: "Ruby")
cat2 = Category.create(title: "Javascript")
cat3 = Category.create(title: "Python")

test1 = Test.create(title: "Ruby bascis", level: 10, category_id: cat1.id, user_id: admin.id)
test2 = Test.create(title: "Python bascis", level: 8, category_id: cat2.id, user_id: admin.id)
test3 = Test.create(title: "Java bascis", level: 3, category_id: cat3.id, user_id: admin.id)

#Ruby test questions and answers
test1_quest1 = Question.create(body: "Как объявить переменную в Ruby?", test_id: test1.id)
test1_ques1_ans1 = Answer.create(body: "var x = 10", correct: false, question_id: test1_quest1.id)
test1_ques1_ans2 = Answer.create(body: "let x = 10", correct: false, question_id: test1_quest1.id)
test1_ques1_ans3 = Answer.create(body: "const x = 10", correct: false, question_id: test1_quest1.id)
test1_ques1_ans4 = Answer.create(body: "x = 10", correct: true, question_id: test1_quest1.id)

test1_quest2 = Question.create(body: "Что делает метод each в Ruby?", test_id: test1.id)
test1_ques2_ans1 = Answer.create(body: "Выводит элементы массива по порядку", correct: false, question_id: test1_quest2.id)
test1_ques2_ans2 = Answer.create(body: "Итерирует по ключам объекта", correct: false, question_id: test1_quest2.id)
test1_ques2_ans3 = Answer.create(body: "Выполняет операцию для каждого элемента коллекции", correct: true, question_id: test1_quest2.id)
test1_ques2_ans4 = Answer.create(body: "Проверяет условие для каждого элемента коллекции", correct: true, question_id: test1_quest2.id)

test1_quest3 = Question.create(body: "Как вызвать метод puts в Ruby?", test_id: test1.id)
test1_ques3_ans1 = Answer.create(body: "puts('Hello, world!')", correct: true, question_id: test1_quest3.id)
test1_ques3_ans2 = Answer.create(body: "console.log('Hello, world!')", correct: false, question_id: test1_quest3.id)
test1_ques3_ans3 = Answer.create(body: "print('Hello, world!')", correct: false, question_id: test1_quest3.id)
test1_ques3_ans4 = Answer.create(body: "System.out.println('Hello, world!')", correct: false, question_id: test1_quest3.id)

test1_quest4 = Question.create(body: "Как создать класс в Ruby?", test_id: test1.id)
test1_ques4_ans1 = Answer.create(body: "class MyClass { }", correct: false, question_id: test1_quest4.id)
test1_ques4_ans2 = Answer.create(body: "MyClass = Class.new { }", correct: true, question_id: test1_quest4.id)
test1_ques4_ans3 = Answer.create(body: "function MyClass() { }", correct: false, question_id: test1_quest4.id)
test1_ques4_ans4 = Answer.create(body: "class = MyClass.new", correct: false, question_id: test1_quest4.id)

test1_quest5 = Question.create(body: "Как объявить массив в Ruby?", test_id: test1.id)
test1_ques5_ans1 = Answer.create(body: "arr = [1, 2, 3]", correct: true, question_id: test1_quest5.id)
test1_ques5_ans2 = Answer.create(body: "arr = {1, 2, 3}", correct: false, question_id: test1_quest5.id)
test1_ques5_ans3 = Answer.create(body: "arr = (1, 2, 3)", correct: false, question_id: test1_quest5.id)
test1_ques5_ans4 = Answer.create(body: "arr = {1: 1, 2: 2, 3: 3}", correct: false, question_id: test1_quest5.id)

test1_quest6 = Question.create(body: "Что такое RubyGems?", test_id: test1.id)
test1_ques6_ans1 = Answer.create(body: "Стандартная библиотека Ruby.", correct: false, question_id: test1_quest6.id)
test1_ques6_ans2 = Answer.create(body: "Официальная документация по Ruby.", correct: false, question_id: test1_quest6.id)
test1_ques6_ans3 = Answer.create(body: "Пакетный менеджер для установки и управления Ruby-библиотеками.", correct: true, question_id: test1_quest6.id)
test1_ques6_ans4 = Answer.create(body: "Интегрированная среда разработки для Ruby.", correct: false, question_id: test1_quest6.id)

test1_quest7 = Question.create(body: "Как объявить метод в Ruby?", test_id: test1.id)
test1_ques7_ans1 = Answer.create(body: "def my_method(): ... end", correct: true, question_id: test1_quest7.id)
test1_ques7_ans2 = Answer.create(body: "function my_method(): ... end", correct: false, question_id: test1_quest7.id)
test1_ques7_ans3 = Answer.create(body: "method my_method(): ... end", correct: false, question_id: test1_quest7.id)
test1_ques7_ans4 = Answer.create(body: "def my_method ... end", correct: false, question_id: test1_quest7.id)

test1_quest8 = Question.create(body: "Что такое Ruby on Rails?", test_id: test1.id)
test1_ques8_ans1 = Answer.create(body: "Язык программирования для создания веб-сайтов.", correct: false, question_id: test1_quest8.id)
test1_ques8_ans2 = Answer.create(body: "Фреймворк для разработки веб-приложений на языке Ruby.", correct: true, question_id: test1_quest8.id)
test1_ques8_ans3 = Answer.create(body: "База данных, используемая в Ruby-приложениях.", correct: false, question_id: test1_quest8.id)
test1_ques8_ans4 = Answer.create(body: "Расширение для работы с файлами в Ruby.", correct: false, question_id: test1_quest8.id)

test1_quest9 = Question.create(body: "Что такое символ в Ruby?", test_id: test1.id)
test1_ques9_ans1 = Answer.create(body: "Переменная, содержащая строку.", correct: false, question_id: test1_quest9.id)
test1_ques9_ans2 = Answer.create(body: "Указатель на функцию.", correct: false, question_id: test1_quest9.id)
test1_ques9_ans3 = Answer.create(body: "Специальный тип данных, представляющий строку.", correct: true, question_id: test1_quest9.id)
test1_ques9_ans4 = Answer.create(body: "Уникальный идентификатор, представленный в виде объекта.", correct: false, question_id: test1_quest9.id)

test1_quest10 = Question.create(body: "Как добавить элемент в конец массива в Ruby?", test_id: test1.id)
test1_ques10_ans1 = Answer.create(body: "arr.push(element);", correct: true, question_id: test1_quest10.id)
test1_ques10_ans2 = Answer.create(body: "arr.add(element);", correct: false, question_id: test1_quest10.id)
test1_ques10_ans3 = Answer.create(body: "arr << element;", correct: true, question_id: test1_quest10.id)
test1_ques10_ans4 = Answer.create(body: "arr.append(element);", correct: false, question_id: test1_quest10.id)


#Python test questions and answers
test2_quest1 = Question.create(body: "Как объявить переменную в Python?", test_id: test2.id)
test2_ques1_ans1 = Answer.create(body: "var x = 10", correct: false, question_id: test2_quest1.id)
test2_ques1_ans2 = Answer.create(body: "let x = 10", correct: false, question_id: test2_quest1.id)
test2_ques1_ans3 = Answer.create(body: "const x = 10", correct: false, question_id: test2_quest1.id)
test2_ques1_ans4 = Answer.create(body: "x = 10", correct: true, question_id: test2_quest1.id)

test2_quest2 = Question.create(body: "Что делает цикл for в Python?", test_id: test2.id)
test2_ques2_ans1 = Answer.create(body: "Выводит элементы массива по порядку.", correct: false, question_id: test2_quest2.id)
test2_ques2_ans2 = Answer.create(body: "Итерирует по ключам объекта.", correct: false, question_id: test2_quest2.id)
test2_ques2_ans3 = Answer.create(body: "Выполняет операцию для каждого элемента коллекции.", correct: true, question_id: test2_quest2.id)
test2_ques2_ans4 = Answer.create(body: "Проверяет условие для каждого элемента коллекции.", correct: false, question_id: test2_quest2.id)

test2_quest3 = Question.create(body: "Как вызвать функцию print() в Python?", test_id: test2.id)
test2_ques3_ans1 = Answer.create(body: "puts('Hello, world!')", correct: false, question_id: test2_quest3.id)
test2_ques3_ans2 = Answer.create(body: "System.out.println('Hello, world!')", correct: false, question_id: test2_quest3.id)
test2_ques3_ans3 = Answer.create(body: "print('Hello, world!')", correct: true, question_id: test2_quest3.id)
test2_ques3_ans4 = Answer.create(body: "console.log('Hello, world!')", correct: false, question_id: test2_quest3.id)

test2_quest4 = Question.create(body: "Как создать список в Python?", test_id: test2.id)
test2_ques4_ans1 = Answer.create(body: "lst = [1, 2, 3]", correct: true, question_id: test2_quest4.id)
test2_ques4_ans2 = Answer.create(body: "lst = {1, 2, 3}", correct: false, question_id: test2_quest4.id)
test2_ques4_ans3 = Answer.create(body: "lst = (1, 2, 3)", correct: false, question_id: test2_quest4.id)
test2_ques4_ans4 = Answer.create(body: "lst = {1: 1, 2: 2, 3: 3}", correct: false, question_id: test2_quest4.id)

test2_quest5 = Question.create(body: "Как вызвать функцию print() в Python?", test_id: test2.id)
test2_ques5_ans1 = Answer.create(body: "puts('Hello, world!')", correct: false, question_id: test2_quest5.id)
test2_ques5_ans2 = Answer.create(body: "System.out.println('Hello, world!')", correct: false, question_id: test2_quest5.id)
test2_ques5_ans3 = Answer.create(body: "print('Hello, world!')", correct: true, question_id: test2_quest5.id)
test2_ques5_ans4 = Answer.create(body: "console.log('Hello, world!')", correct: false, question_id: test2_quest5.id)

test2_quest6 = Question.create(body: "Как создать список в Python?", test_id: test2.id)
test2_ques6_ans1 = Answer.create(body: "lst = [1, 2, 3]", correct: true, question_id: test2_quest6.id)
test2_ques6_ans2 = Answer.create(body: "lst = {1, 2, 3}", correct: false, question_id: test2_quest6.id)
test2_ques6_ans3 = Answer.create(body: "lst = (1, 2, 3)", correct: false, question_id: test2_quest6.id)
test2_ques6_ans4 = Answer.create(body: "lst = {1: 1, 2: 2, 3: 3}", correct: false, question_id: test2_quest6.id)

test2_quest7 = Question.create(body: "Как объявить функцию в Python?", test_id: test2.id)
test2_ques7_ans1 = Answer.create(body: "def my_function(): ... end", correct: true, question_id: test2_quest7.id)
test2_ques7_ans2 = Answer.create(body: "function my_function(): ... end", correct: false, question_id: test2_quest7.id)
test2_ques7_ans3 = Answer.create(body: "my_function = def(): ... end", correct: false, question_id: test2_quest7.id)
test2_ques7_ans4 = Answer.create(body: "def my_function():", correct: false, question_id: test2_quest7.id)

test2_quest8 = Question.create(body: "Что делает оператор '==' в Python?", test_id: test2.id)
test2_ques8_ans1 = Answer.create(body: "Проверяет равенство объектов.", correct: true, question_id: test2_quest8.id)
test2_ques8_ans2 = Answer.create(body: "Выполняет присваивание переменной.", correct: false, question_id: test2_quest8.id)
test2_ques8_ans3 = Answer.create(body: "Проверяет, является ли объект истинным.", correct: false, question_id: test2_quest8.id)
test2_ques8_ans4 = Answer.create(body: "Выполняет объединение списков.", correct: false, question_id: test2_quest8.id)

test2_quest9 = Question.create(body: "Что делает ключевое слово 'def' в Python?", test_id: test2.id)
test2_ques9_ans1 = Answer.create(body: "Объявляет класс.", correct: false, question_id: test2_quest9.id)
test2_ques9_ans2 = Answer.create(body: "Объявляет функцию.", correct: true, question_id: test2_quest9.id)
test2_ques9_ans3 = Answer.create(body: "Создает цикл.", correct: false, question_id: test2_quest9.id)
test2_ques9_ans4 = Answer.create(body: "Определяет условие.", correct: false, question_id: test2_quest9.id)

test2_quest10 = Question.create(body: "Как создать словарь в Python?", test_id: test2.id)
test2_ques10_ans1 = Answer.create(body: "dict = {1: 'one', 2: 'two'}", correct: true, question_id: test2_quest10.id)
test2_ques10_ans2 = Answer.create(body: "map = {'one', 'two'}", correct: false, question_id: test2_quest10.id)
test2_ques10_ans3 = Answer.create(body: "dict(1 = 'one', 2 = 'two')", correct: false, question_id: test2_quest10.id)
test2_ques10_ans4 = Answer.create(body: "map(1, 'one', 2, 'two')", correct: false, question_id: test2_quest10.id)

#Javascript test questions and answers
test3_quest1 = Question.create(body: "Как объявить переменную в JavaScript?", test_id: test3.id)
test3_ques1_ans1 = Answer.create(body: "var x = 10;", correct: true, question_id: test3_quest1.id)
test3_ques1_ans2 = Answer.create(body: "let x = 10;", correct: false, question_id: test3_quest1.id)
test3_ques1_ans3 = Answer.create(body: "const x = 10;", correct: false, question_id: test3_quest1.id)
test3_ques1_ans4 = Answer.create(body: "x = 10;", correct: false, question_id: test3_quest1.id)

test3_quest2 = Question.create(body: "Что делает метод forEach в JavaScript?", test_id: test3.id)
test3_ques2_ans1 = Answer.create(body: "Выводит элементы массива по порядку.", correct: false, question_id: test3_quest2.id)
test3_ques2_ans2 = Answer.create(body: "Итерирует по ключам объекта.", correct: false, question_id: test3_quest2.id)
test3_ques2_ans3 = Answer.create(body: "Выполняет операцию для каждого элемента коллекции.", correct: true, question_id: test3_quest2.id)
test3_ques2_ans4 = Answer.create(body: "Проверяет условие для каждого элемента коллекции.", correct: false, question_id: test3_quest2.id)

test3_quest3 = Question.create(body: "Как вызвать метод console.log() в JavaScript?", test_id: test3.id)
test3_ques3_ans1 = Answer.create(body: "puts('Hello, world!')", correct: false, question_id: test3_quest3.id)
test3_ques3_ans2 = Answer.create(body: "System.out.println('Hello, world!')", correct: false, question_id: test3_quest3.id)
test3_ques3_ans3 = Answer.create(body: "console.log('Hello, world!')", correct: true, question_id: test3_quest3.id)
test3_ques3_ans4 = Answer.create(body: "print('Hello, world!')", correct: false, question_id: test3_quest3.id)

test3_quest4 = Question.create(body: "Как создать объект в JavaScript?", test_id: test3.id)
test3_ques4_ans1 = Answer.create(body: "var obj = {};", correct: true, question_id: test3_quest4.id)
test3_ques4_ans2 = Answer.create(body: "obj = Object.create();", correct: false, question_id: test3_quest4.id)
test3_ques4_ans3 = Answer.create(body: "obj = new Object();", correct: false, question_id: test3_quest4.id)
test3_ques4_ans4 = Answer.create(body: "All of the above.", correct: false, question_id: test3_quest4.id)

test3_quest5 = Question.create(body: "Как объявить массив в JavaScript?", test_id: test3.id)
test3_ques5_ans1 = Answer.create(body: "arr = [1, 2, 3];", correct: true, question_id: test3_quest5.id)
test3_ques5_ans2 = Answer.create(body: "arr = {1, 2, 3};", correct: false, question_id: test3_quest5.id)
test3_ques5_ans3 = Answer.create(body: "arr = (1, 2, 3);", correct: false, question_id: test3_quest5.id)
test3_ques5_ans4 = Answer.create(body: "arr = {1: 1, 2: 2, 3: 3};", correct: false, question_id: test3_quest5.id)

test3_quest6 = Question.create(body: "Что такое DOM в JavaScript?", test_id: test3.id)
test3_ques6_ans1 = Answer.create(body: "Модель объектов документа, представляющая структуру HTML-документа.", correct: true, question_id: test3_quest6.id)
test3_ques6_ans2 = Answer.create(body: "Методы для работы с датами и временем.", correct: false, question_id: test3_quest6.id)
test3_ques6_ans3 = Answer.create(body: "Встроенные функции для работы с числами.", correct: false, question_id: test3_quest6.id)
test3_ques6_ans4 = Answer.create(body: "Библиотека для создания анимаций.", correct: false, question_id: test3_quest6.id)

test3_quest7 = Question.create(body: "Как объявить функцию в JavaScript?", test_id: test3.id)
test3_ques7_ans1 = Answer.create(body: "function myFunction() { ... }", correct: true, question_id: test3_quest7.id)
test3_ques7_ans2 = Answer.create(body: "def myFunction(): ... end", correct: false, question_id: test3_quest7.id)
test3_ques7_ans3 = Answer.create(body: "void myFunction() { ... }", correct: false, question_id: test3_quest7.id)
test3_ques7_ans4 = Answer.create(body: "myFunction = function() { ... };", correct: false, question_id: test3_quest7.id)

test3_quest8 = Question.create(body: "Как добавить элемент в конец массива в JavaScript?", test_id: test3.id)
test3_ques8_ans1 = Answer.create(body: "arr.push(element);", correct: true, question_id: test3_quest8.id)
test3_ques8_ans2 = Answer.create(body: "arr.add(element);", correct: false, question_id: test3_quest8.id)
test3_ques8_ans3 = Answer.create(body: "arr.push(element);", correct: true, question_id: test3_quest8.id)
test3_ques8_ans4 = Answer.create(body: "arr.append(element);", correct: false, question_id: test3_quest8.id)

test3_quest9 = Question.create(body: "Что такое замыкание (closure) в JavaScript?", test_id: test3.id)
test3_ques9_ans1 = Answer.create(body: "Специальная функция для создания объектов.", correct: false, question_id: test3_quest9.id)
test3_ques9_ans2 = Answer.create(body: "Функция, которая запоминает окружение, в котором была создана.", correct: true, question_id: test3_quest9.id)
test3_ques9_ans3 = Answer.create(body: "Метод для изменения контекста вызова функции.", correct: false, question_id: test3_quest9.id)
test3_ques9_ans4 = Answer.create(body: "Переменная, доступная только внутри блока кода.", correct: false, question_id: test3_quest9.id)

test3_quest10 = Question.create(body: "Как выполнить асинхронный запрос в JavaScript?", test_id: test3.id)
test3_ques10_ans1 = Answer.create(body: "syncRequest(url);", correct: false, question_id: test3_quest10.id)
test3_ques10_ans2 = Answer.create(body: "XMLHttpRequest(url, callback);", correct: true, question_id: test3_quest10.id)
test3_ques10_ans3 = Answer.create(body: "request(url).sync();", correct: false, question_id: test3_quest10.id)
test3_ques10_ans4 = Answer.create(body: "fetch(url).then(response => response.json());", correct: false, question_id: test3_quest10.id)





