document.addEventListener('turbolinks:load', function() {
    const timerElement = document.getElementById('timer');
    if (!timerElement) return;

    let remainingTime = parseInt(timerElement.dataset.testTime);
    const testPassageForm = document.querySelector('form');
    const updateTimer = function() {
        if (remainingTime < 0) {
            clearInterval(intervalId);
            testPassageForm.submit();
        } else {
            if (remainingTime <= 60) {
                timerElement.classList.add('timer-red');
            }
            const hours = Math.floor(remainingTime / 3600);
            const minutes = Math.floor((remainingTime % 3600) / 60);
            const seconds = remainingTime % 60;
            timerElement.textContent = `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
            remainingTime -= 1;
        }
    };
    const intervalId = setInterval(updateTimer, 1000);
});
