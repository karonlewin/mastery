$(function() {
  $('#calendar').fullCalendar({
    events: '/appointments.json'
  });
});
