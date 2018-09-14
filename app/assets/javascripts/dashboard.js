$(function() {
  $('#calendar').fullCalendar({
    events: '/appointments.json',
    eventClick: function(event) {
      return false;
    }
  });
});
