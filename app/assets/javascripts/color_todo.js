$(document).ready(function() {

  $('li').on('click', function(e) {
    var title = $(this).text()
    //create route
    $.get('/complete_status', {
    }).done(function(result){
      console.log(result)
    })
  })



  // // bind
  // $('li').on('click', function() {
  //   console.log(this);
  //   $(this).css('background-color', 'grey');
  // })
  //  // delegate
  // $('#list').on('click', 'li p', function() {
  //   $.post('/url', {
  //     data: $('ul').find('li').val()
  //   })
  // })

  // // live
  // $(document).on('click', 'li', function() {

  // })
})
