$(document).ready(function() {
  $.ajax({
    url: 'api/url',
    method: 'POST',
  })
  
    .done(function(data, textStatus, jqXHR) {
      console.log('done');
    })
  
    .fail(function(jqXHR, textStatus, errorThrown) {
      if (jqXHR.responseJSON) {
        console.log('failed with json data');
      }
      else {
        console.log('failed with unknown data'); 
      }
    })
  
    .always(function(dataOrjqXHR, textStatus, jqXHRorErrorThrown) {
      console.log('always');
    });
});
