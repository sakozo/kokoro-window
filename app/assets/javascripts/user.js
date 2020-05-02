$(function(){
  //画像が選択されたらメソッドが発火！
  $('.icon_file_field').on("change", function(){
    if ( $('.icon_file_field')[0].value === "" ) {
      //画像が選択されなければSendボタンはdisableのまま
      $(".icon-btn")[0].disabled = true;
    }else{
      //画像が選択されればSendボタンを押下可能に変更
      $(".icon-btn")[0].disabled = false;
    }
  })
});
