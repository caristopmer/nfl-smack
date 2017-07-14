$(document).ready(function() {
  $('#new-post-form').on('submit', function() {
    event.preventDefault();
    var postData = $('#new-post-form').serialize();

    $.ajax({
      url: '/posts',
      type: 'POST',
      data: postData
    })
    .done(function(response) {
      $('.posts-list').append(response);

      $('#new-post-form')[0].reset()
      console.log("success");
    })
    .fail(function(response) {
      var message = response.responseText;
      alert(message);
      console.log("error");
    })
  });

  $('#new-reply-form').on('submit', function() {
    event.preventDefault();
    var replyData = $('#new-reply-form').serialize();
    var url = $('#new-reply-form').attr('action');

    $.ajax({
      url: url,
      type: 'POST',
      data: replyData
    })
    .done(function(response) {
      $('.replies-list').append(response);

      $('#new-reply-form')[0].reset()
      console.log("success");
    })
    .fail(function(response) {
      var message = response.responseText;
      alert(message);
      console.log("error");
    })
  });
});

