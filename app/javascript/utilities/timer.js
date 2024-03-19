document.addEventListener('turbolinks:load', function() {
    const timerElement = document.getElementById('timer');
    if (!timerElement) return;

    const testPassageId = timerElement.dataset.testPassageId;

    const updateTimer = function() {
        fetch(`/test_passages/${testPassageId}/remaining_time`)
            .then(response => response.json())
            .then(data => {
                const remainingTime = data.remaining_time;
                if (remainingTime <= 0) {
                    clearInterval(intervalId);
                    window.location.href = `/test_passages/${testPassageId}/result`;
                } else {
                    const hours = Math.floor(remainingTime / 3600);
                    const minutes = Math.floor((remainingTime % 3600) / 60);
                    const seconds = remainingTime % 60;
                    timerElement.textContent = `${hours}:${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
                }
            });
    };
    const intervalId = setInterval(updateTimer, 1000);
});
