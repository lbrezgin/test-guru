document.addEventListener('turbolinks:load', function() {

    let check = document.getElementById('myBar');

    if (check) {
        progressBarFunc();
    }
});

function progressBarFunc() {
    let progressBar = document.getElementById('myBar');
    let testPassage = progressBar.dataset.testPassageQuestions;
    let currentQuestion = progressBar.dataset.testPassageCurrentQuestion;

    const percents = (100.0 / testPassage) * currentQuestion;

    document.getElementById('myBar').style.width = percents + "%";
}

