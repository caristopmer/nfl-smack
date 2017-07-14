$(document).ready(function() {
  $('#new-post-form').on('submit', function() {
    event.preventDefault()
    var postData = $('this').serialize()
    $.ajax({
      url: '/posts',
      type: 'POST',
      data: postData,
    })
    .done(function(response) {
      $('.posts-list').append(response);

      $('#new-post-form').reset()
      console.log("success");
    })
    .fail(function(response) {
      console.log("error");
    })
  });
});

