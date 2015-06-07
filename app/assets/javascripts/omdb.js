$(document).ready(function() {

  // ajax call to movie search API
  var postSearch = function(searchStr, theme, callback) {
    $.ajax({
      url: '/movies/search',
      method: 'POST',
      // using a search string
      data: {search: searchStr},
      dataType: 'json'
    }).done(function(movies) {
      $.each(movies['Search'], function(i, movie) {
        // and passing in a callback and the theme
        callback(theme, movie['Title']);
      });
    });
  };

  // ajax call to movie title API
  var postTitle = function(theme, title) {
    $.ajax({
      url: '/movies/title',
      method: 'POST',
      // passing in a theme and the received title from the search
      data: {theme: theme, title: title },
      dataType: 'json'
    }).done(function(data) {
      // show the result in the console for dev
      console.log(data);
    });
  };

  // takes a search string and runs the search ajax, passing in the post ajax
  // as the callback arg and the selected theme
  var omdbScript = function() {
    var searchStr = $('#search').val();
    var theme = $('#theme').val();
    postSearch(searchStr, theme, postTitle);
  };

  // ajax call to imdb poster API
  var imdbScript = function() {
    $.ajax({
      url: '/movies/imdb',
      method: 'POST',
      dataType: 'json'
    });
  };

  // attach event listeners
  $('#init-omdb').on('click', omdbScript);
  $('#init-imdb').on('click', imdbScript);

});