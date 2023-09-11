document.addEventListener('DOMContentLoaded', function() {
    let currentDateTimeLabel = document.getElementById('currentDateTime');
    let currentDate = new Date();
    let formattedDate = currentDate.toLocaleDateString() + " " + currentDate.toLocaleTimeString();
    currentDateTimeLabel.textContent = formattedDate;
});