$(document).ready(function() {
  $('#new-post-form').on('submit', function() {
    event.preventDefault();
    var postData = $('#new-post-form').serialize();
    console.log(postData);

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
});

