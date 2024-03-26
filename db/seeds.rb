admin = Admin.create(first_name: "Admin", last_name: "Admin", email: "lewickbrez@gmail.com", password: "qwerty123456789")


cat1 = Category.create(title: "Matemātika")
test1 = Test.create(title: "Trigonometrija", level: 10, category_id: cat1.id, user_id: admin.id, time: 10)

test1_quest1 = Question.create(body: "Kas ir sin(90°)?", test_id: test1.id)
test1_ques1_ans1 = Answer.create(body: "0", correct: false, question_id: test1_quest1.id)
test1_ques1_ans2 = Answer.create(body: "1", correct: true, question_id: test1_quest1.id)
test1_ques1_ans3 = Answer.create(body: "-1", correct: false, question_id: test1_quest1.id)
test1_ques1_ans4 = Answer.create(body: "0,5", correct: false, question_id: test1_quest1.id)

test1_quest2 = Question.create(body: "Kā aprēķina taisnstūra laukumu?", test_id: test1.id)
test1_ques2_ans1 = Answer.create(body: "Garums reizināts ar platumu", correct: true, question_id: test1_quest2.id)
test1_ques2_ans2 = Answer.create(body: "Garums plus platums", correct: false, question_id: test1_quest2.id)
test1_ques2_ans3 = Answer.create(body: "Garums dalīts ar platumu", correct: false, question_id: test1_quest2.id)
test1_ques2_ans4 = Answer.create(body: "Garums mīnus platums", correct: false, question_id: test1_quest2.id)

test1_quest3 = Question.create(body: "Kas ir kvadrātsakne no 81?", test_id: test1.id)
test1_ques3_ans1 = Answer.create(body: "9", correct: true, question_id: test1_quest3.id)
test1_ques3_ans2 = Answer.create(body: "8", correct: false, question_id: test1_quest3.id)
test1_ques3_ans3 = Answer.create(body: "7", correct: false, question_id: test1_quest3.id)
test1_ques3_ans4 = Answer.create(body: "10", correct: false, question_id: test1_quest3.id)

test1_quest4 = Question.create(body: "Kāda ir Pi vērtība līdz diviem cipariem aiz komata?", test_id: test1.id)
test1_ques4_ans1 = Answer.create(body: "3,14", correct: true, question_id: test1_quest4.id)
test1_ques4_ans2 = Answer.create(body: "3,15", correct: false, question_id: test1_quest4.id)
test1_ques4_ans3 = Answer.create(body: "3,16", correct: false, question_id: test1_quest4.id)
test1_ques4_ans4 = Answer.create(body: "3,13", correct: false, question_id: test1_quest4.id)

test1_quest5 = Question.create(body: "Kā aprēķina trijstūra perimetru?", test_id: test1.id)
test1_ques5_ans1 = Answer.create(body: "Saskaitīt visas trīs malas", correct: true, question_id: test1_quest5.id)
test1_ques5_ans2 = Answer.create(body: "Reizināt divas garākās malas", correct: false, question_id: test1_quest5.id)
test1_ques5_ans3 = Answer.create(body: "Saskaitīt divas īsākās malas", correct: false, question_id: test1_quest5.id)
test1_ques5_ans4 = Answer.create(body: "Dalīt garāko malu ar īsāko", correct: false, question_id: test1_quest5.id)

test4 = Test.create(title: "Matemātiskās indukcijas pamati", level: 5, category_id: cat1.id, user_id: admin.id, time: 15)

test4_quest1 = Question.create(body: "Kas ir matemātiskās indukcijas pirmais solis?", test_id: test4.id)
test4_ques1_ans1 = Answer.create(body: "Pierādīt apgalvojumu, kad n=1", correct: true, question_id: test4_quest1.id)
test4_ques1_ans2 = Answer.create(body: "Pierādīt apgalvojumu visiem n", correct: false, question_id: test4_quest1.id)
test4_ques1_ans3 = Answer.create(body: "Izmantot iepriekšējo soli", correct: false, question_id: test4_quest1.id)
test4_ques1_ans4 = Answer.create(body: "Nav noteikta secība", correct: false, question_id: test4_quest1.id)

test4_quest2 = Question.create(body: "Kāda ir matemātiskās indukcijas otrā solis?", test_id: test4.id)
test4_ques2_ans1 = Answer.create(body: "Pierādīt, ka ja apgalvojums patiess n=k, tad tas patiess arī n=k+1", correct: true, question_id: test4_quest2.id)
test4_ques2_ans2 = Answer.create(body: "Pierādīt, ka apgalvojums patiess n=1", correct: false, question_id: test4_quest2.id)
test4_ques2_ans3 = Answer.create(body: "Atrast vispārīgu formulu", correct: false, question_id: test4_quest2.id)
test4_ques2_ans4 = Answer.create(body: "Pierādīt apgalvojumu, izmantojot diferencēšanu", correct: false, question_id: test4_quest2.id)

test4_quest3 = Question.create(body: "Kāda ir indukcijas bāzes nozīme matemātiskajā indukcijā?", test_id: test4.id)
test4_ques3_ans1 = Answer.create(body: "Pierādīt apgalvojumu sākotnējam gadījumam", correct: true, question_id: test4_quest3.id)
test4_ques3_ans2 = Answer.create(body: "Nodrošināt formulu vispārīgumam", correct: false, question_id: test4_quest3.id)
test4_ques3_ans3 = Answer.create(body: "Aprēķināt sekojošo gadījumu", correct: false, question_id: test4_quest3.id)
test4_ques3_ans4 = Answer.create(body: "Pierādīt apgalvojumu bez izņēmumiem", correct: false, question_id: test4_quest3.id)

test4_quest4 = Question.create(body: "Ko nozīmē pierādīt apgalvojumu par k+1, veicot matemātisko indukciju?", test_id: test4.id)
test4_ques4_ans1 = Answer.create(body: "Pārbaudīt apgalvojuma patiesumu nākamajam skaitlim pēc k", correct: true, question_id: test4_quest4.id)
test4_ques4_ans2 = Answer.create(body: "Atkārtot pierādījumu katrai vērtībai", correct: false, question_id: test4_quest4.id)
test4_ques4_ans3 = Answer.create(body: "Atrast vispārēju formulu", correct: false, question_id: test4_quest4.id)
test4_ques4_ans4 = Answer.create(body: "Pierādīt, ka formula neder nevienam n", correct: false, question_id: test4_quest4.id)

test4_quest5 = Question.create(body: "Kāpēc matemātiskā indukcija ir spēcīgs pierādīšanas rīks matemātikā?", test_id: test4.id)
test4_ques5_ans1 = Answer.create(body: "Tā ļauj pierādīt apgalvojumus, kas attiecas uz bezgalīgu skaitu elementu", correct: true, question_id: test4_quest5.id)
test4_ques5_ans2 = Answer.create(body: "Tā dod precīzu skaitļu vērtību aprēķinus", correct: false, question_id: test4_quest5.id)
test4_ques5_ans3 = Answer.create(body: "Tā ir vienkāršākā pierādīšanas metode", correct: false, question_id: test4_quest5.id)
test4_ques5_ans4 = Answer.create(body: "Tā nav saistīta ar loģiku", correct: false, question_id: test4_quest5.id)

cat3 = Category.create(title: "Angļu valoda")
test_english = Test.create(title: "English Basics", level: 10, category_id: cat3.id, user_id: admin.id, time: 15)

test_english_quest1 = Question.create(body: "What is the plural form of 'Child'?", test_id: test_english.id)
test_english_ques1_ans1 = Answer.create(body: "Childs", correct: false, question_id: test_english_quest1.id)
test_english_ques1_ans2 = Answer.create(body: "Children", correct: true, question_id: test_english_quest1.id)
test_english_ques1_ans3 = Answer.create(body: "Childes", correct: false, question_id: test_english_quest1.id)
test_english_ques1_ans4 = Answer.create(body: "Childrens", correct: false, question_id: test_english_quest1.id)

test_english_quest2 = Question.create(body: "Which word is an adjective?", test_id: test_english.id)
test_english_ques2_ans1 = Answer.create(body: "Quickly", correct: false, question_id: test_english_quest2.id)
test_english_ques2_ans2 = Answer.create(body: "Beautiful", correct: true, question_id: test_english_quest2.id)
test_english_ques2_ans3 = Answer.create(body: "Run", correct: false, question_id: test_english_quest2.id)
test_english_ques2_ans4 = Answer.create(body: "Under", correct: false, question_id: test_english_quest2.id)

test_english_quest3 = Question.create(body: "What is the past tense of 'Go'?", test_id: test_english.id)
test_english_ques3_ans1 = Answer.create(body: "Goes", correct: false, question_id: test_english_quest3.id)
test_english_ques3_ans2 = Answer.create(body: "Went", correct: true, question_id: test_english_quest3.id)
test_english_ques3_ans3 = Answer.create(body: "Gone", correct: false, question_id: test_english_quest3.id)
test_english_ques3_ans4 = Answer.create(body: "Going", correct: false, question_id: test_english_quest3.id)

test_english_quest4 = Question.create(body: "Which sentence is correct?", test_id: test_english.id)
test_english_ques4_ans1 = Answer.create(body: "She have a cat.", correct: false, question_id: test_english_quest4.id)
test_english_ques4_ans2 = Answer.create(body: "She has a cat.", correct: true, question_id: test_english_quest4.id)
test_english_ques4_ans3 = Answer.create(body: "She haves a cat.", correct: false, question_id: test_english_quest4.id)
test_english_ques4_ans4 = Answer.create(body: "She having a cat.", correct: false, question_id: test_english_quest4.id)

test_english_quest5 = Question.create(body: "What does 'ESL' stand for?", test_id: test_english.id)
test_english_ques5_ans1 = Answer.create(body: "English as a Second Language", correct: true, question_id: test_english_quest5.id)
test_english_ques5_ans2 = Answer.create(body: "English for Secondary Learners", correct: false, question_id: test_english_quest5.id)
test_english_ques5_ans3 = Answer.create(body: "English Second Language", correct: false, question_id: test_english_quest5.id)
test_english_ques5_ans4 = Answer.create(body: "Enhanced Speaking Language", correct: false, question_id: test_english_quest5.id)

