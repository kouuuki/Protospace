// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(function () {
  $('form').submit(function(e) {
    // $('.form-control').val("");
    $.ajax($(this).attr('action'), {
          type: 'POST',
          url: '/comments/create',
          data: formData,
          processData: false,
          contentType: false,
          dataType: 'json' //データ形式を指定
        }).done(function(data){
          $('.chat-message').append(html(data));
          console.log(data);
          $('#message-s').animate({scrollTop:$('.message')[0].scrollHeight}, 2000); // 自動スクロールさせる
          $('.form-control').val(""); // フォームを空にする
        }).fail(function() {
           console.log('error!'); // エラーが発生したとき
        });
  });
});
