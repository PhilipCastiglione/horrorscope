$(document).ready(function(){

  var postSearch = function(string, theme, callback) {
    $.ajax({
      url: '/movies/search',
      method: 'POST',
      data: {search: string},
      dataType: 'json'
    }).done(function(movies){
      $.each(movies['Search'], function(i, movie) {
        callback(theme, movie['Title']);
      });
    });
  };

  var postTitle = function(theme, title) {
    $.ajax({
      url: '/movies/title',
      method: 'POST',
      data: {theme: theme, title: title },
      dataType: 'json'
    }).done(function(data) {
      console.log(data);
    });
  };

  var omdbScript = function() {
    var searchStr = $('#search').val();
    var theme = $('#theme').val();
    postSearch(searchStr, theme, postTitle);
  };

  $('#init-omdb').on('click', omdbScript);

});