//ページ読み込み時に発火
$(function() {
  //gonが定義されていない場合、return
  if(typeof gon == 'undefined'){
    return;
  }
  var API_KEY = gon.wheather_api_key;
  var city = $('#record_location').val();
  var url = 'http://api.openweathermap.org/data/2.5/forecast?q=' + city + ',jp&units=metric&APPID=' + API_KEY;
  $.ajax({
    url: url,
    dataType: "json",
    type: 'GET',
  })
  .done(function(data) {
    var insertHTML = "";
    var cityName = '<h2>' + data.city.name + '</h2>';
    $('#city-name').html(cityName);
    insertHTML += buildHTML(data, 0);
    $('#weather').html(insertHTML);
  })
  .fail(function(data) {
    console.log("失敗しました");
  });
});

//セレクトボックス変更時に発火（再取得）
$(function() {
  $('#record_location').change(function() {
  var API_KEY = gon.wheather_api_key;
  var city = $('#record_location').val();
  var url = 'http://api.openweathermap.org/data/2.5/forecast?q=' + city + ',jp&units=metric&APPID=' + API_KEY;
  $.ajax({
    url: url,
    dataType: "json",
    type: 'GET',
  })
  .done(function(data) {
    var insertHTML = "";
    var cityName = '<h2>' + data.city.name + '</h2>';
    $('#city-name').html(cityName);
    insertHTML += buildHTML(data, 0);
    $('#weather').html(insertHTML);
  })
  .fail(function(data) {
    console.log("失敗しました");
  });
});
});

//htmlの組み立て
function buildHTML(data, i) {
  var Week = new Array("（日）","（月）","（火）","（水）","（木）","（金）","（土）");
  var date = new Date (data.list[i].dt_txt);
  date.setHours(date.getHours() + 9);
  var month = date.getMonth()+1;
  var day = month + "月" + date.getDate() + "日" + Week[date.getDay()] + date.getHours() + "：00";
  var icon = data.list[i].weather[0].icon;
  var html =
  '<div class="weather-report">' +
    '<img src="http://openweathermap.org/img/w/' + icon + '.png">' +
    '<div class="city">' + $('#record_location option:selected').text() + '</div>' +
    '<div class="weather-date">' + day + '</div>' +
    '<div class="weather-main">'+ data.list[i].weather[0].main + '</div>' +
    '<div class="weather-temp">' + Math.round(data.list[i].main.temp) + '℃</div>' +
    '<div class="weather-pressure">' + Math.round(data.list[i].main.pressure) + 'hPa</div>' +
  '</div>';
  return html
}
