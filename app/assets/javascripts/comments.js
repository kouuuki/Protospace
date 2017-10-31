$(function () {
  $('form').submit(function(e) {
    // e.preventDefault();
    // var postUrl = $('form').attr("action");
    // var formData = new FormData($(this).get(0));

    $.ajax($(this).attr('action'), {
          type: 'POST',
          url: '/comments/create',
          data: formData,
          processData: false,
          contentType: false,
          dataType: 'json' //データ形式を指定
        }).done(function(data){
          // $('.media-body').append(html(data));
          console.log(data);
          $('.form-control').val(""); // フォームを空にする
        }).fail(function() {
           console.log('error!'); // エラーが発生したとき
        });
  });
});
