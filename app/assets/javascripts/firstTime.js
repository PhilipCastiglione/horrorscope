var setDefaultZodiac = function(days, months) {
  // convert date to serial
  var serial = +months + days / 100;
  var serialZodiac = '';
  // assign zodiac sign based on serial date
  if (serial < 1.20) {serialZodiac = 'Capricorn';
  } else if (serial < 2.20) {serialZodiac = 'Aquarius';
  } else if (serial < 3.21) {serialZodiac = 'Pisces';
  } else if (serial < 4.21) {serialZodiac = 'Aries';
  } else if (serial < 5.22) {serialZodiac = 'Taurus';
  } else if (serial < 6.23) {serialZodiac = 'Gemini';
  } else if (serial < 7.23) {serialZodiac = 'Cancer';
  } else if (serial < 8.22) {serialZodiac = 'Leo';
  } else if (serial < 9.24) {serialZodiac = 'Virgo';
  } else if (serial < 10.24) {serialZodiac = 'Libra';
  } else if (serial < 11.23) {serialZodiac = 'Scorpio';
  } else if (serial < 12.23) {serialZodiac = 'Sagittarius';
  } else if (serial < 12.32) {serialZodiac = 'Capricorn';
  } else {serialZodiac = 'date error in setDefaultZodiac';
  }

  localStorage.setItem('defaultZodiac', serialZodiac);
};

var pushEmail = function(address, sign) {
  $.ajax({
    url: '/emails/add',
    method: 'POST',
    data: {email: address, zodiac: sign},
    dataType: 'json'
  })
};

var toggleFirstTime = function() {
  $('#first-time').toggle();
  $('#first-time-reaccess').toggle();
};

var submitFirstTime = function() {
  var days = $('#first-time-days').val();
  var months = $('#first-time-months').val();
  var name = $('#first-time-name').val();
  var email = $('#first-time-email').val();
  // if date values expected (not handling 31st Feb edge cases because yolo)
  if (days >= 1 && days <= 31 && months >= 1 && months <= 12) {
    setDefaultZodiac(days, months);
  }
  // add name if given
  if (name) {
    localStorage.setItem('name', name);
  }
  // if it looks and smells like an email address
  if (email.match(/@/)) {
    pushEmail(email, localStorage.getItem('defaultZodiac'));
  }
  // on submit, send us to the default sign
  window.location.href = '/horrorscopes/' + localStorage.getItem('defaultZodiac');
};

$(window).load(function(){

  // check if first time visitor
  if (!localStorage.getItem('visitCount')) {
    // set default default...
    localStorage.setItem('defaultZodiac', 'Aries');
    toggleFirstTime();
    localStorage.setItem('visitCount', '1')
  } else {
    // if we are on the splash page and there is a default, go there
    if ((window.location.href === "http://localhost:3000/" ||
          window.location.href === "https://horrify.herokuapp.com/") &&
        localStorage.getItem('defaultZodiac')) {
      window.location.href = '/horrorscopes/' + localStorage.getItem('defaultZodiac');
    }
    // update the visit count
    var count = parseInt(localStorage.getItem('visitCount'), 10);
    localStorage.setItem('visitCount', ++count);
  }

});

$(document).ready(function(){
  // attach event listeners
  $('.toggle-first-time').on('click', toggleFirstTime);
  $('#submit-first-time').on('click', submitFirstTime);
});
