$(window).load(function(){


  var setDefaultZodiac = function(days, months) {
    
// # class Aries < Horrorscope
// #   @dates = {
// #     lower: [21,3],
// #     upper: [20,4]
// #   }
// # end

// # class Taurus < Horrorscope
// #   @dates = {
// #     lower: [21,4],
// #     upper: [21,5]
// #   }
// # end

// # class Gemini < Horrorscope
// #   @dates = {
// #     lower: [22,5],
// #     upper: [22,6]
// #   }
// # end

// # class Cancer < Horrorscope
// #   @dates = {
// #     lower: [23,6],
// #     upper: [22,7]
// #   }
// # end

// # class Leo < Horrorscope
// #   @dates = {
// #     lower: [23,7],
// #     upper: [21,8]
// #   }
// # end

// # class Virgo < Horrorscope
// #   @dates = {
// #     lower: [22,8],
// #     upper: [23,9]
// #   }
// # end

// # class Libra < Horrorscope
// #   @dates = {
// #     lower: [24,9],
// #     upper: [23,10]
// #   }
// # end

// # class Scorpio < Horrorscope
// #   @dates = {
// #     lower: [24,10],
// #     upper: [22,11]
// #   }
// # end

// # class Sagittarius < Horrorscope
// #   @dates = {
// #     lower: [23,11],
// #     upper: [22,12]
// #   }
// # end

// # class Capricorn < Horrorscope
// #   @dates = {
// #     lower: [23,12],
// #     upper: [20,1]
// #   }
// # end

// # class Aquarius < Horrorscope
// #   @dates = {
// #     lower: [21,1],
// #     upper: [19,2]
// #   }
// # end

// # class Pisces < Horrorscope
// #   @dates = {
// #     lower: [20,2],
// #     upper: [20,3]
// #   }
// # end



    // localStorage.setItem('defaultZodiac', zodiac);
  };

  var pushEmail = function(email) {
    // put email in db with ajax (need to write API etc)
  };

  var toggleFirstTime = function() {
    $('#first-time').toggle();
  };

  var submitFirstTime = function() {
    var days = $('#first-time-days').val();
    var months = $('#first-time-months').val();
    var email = $('#first-time-email').val();
    if (days >= 1 && days <= 31 && months >= 1 && months <= 12) {
      setDefaultZodiac(days, months);
    }
    if (email) {
      pushEmail(email);
    }
  };

  $('#skip-first-time').on('click', toggleFirstTime);
  $('#submit-first-time').on('click', submitFirstTime);

  if (!localStorage.getItem('visitCount')) {
    localStorage.setItem('defaultZodiac', 'Aries');
    toggleFirstTime();
    localStorage.setItem('visitCount', '1')
  } else {
    var count = parseInt(localStorage.getItem('visitCount'), 10);
    //do this only on the splash page
    window.location.href = '/horrorscopes/' + localStorage.getItem('defaultZodiac');
    localStorage.setItem('visitCount', ++count);
  }

});


// style modal