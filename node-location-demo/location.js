const maxApi = require("max-api");

let url = "https://www.metaweather.com/api/location/search/?query=";
let urlWeather = "https://www.metaweather.com/api/location/";

let response;
// query = san - comes up with multiple results

//write to message
// maxApi.outlet("hello node");
//write to MAX console
// maxApi.post("Node in the house");

// maxApi.addHandler('makeRequest', () => {
//   maxApi.outlet("is anybody out there?");
// });


var XMLhttprequest = require('XMLhttprequest').XMLHttpRequest;
let xhttp = new XMLhttprequest();

maxApi.addHandler('makeRequest', (city) => {
  xhttp.open('GET', url+city, false); // true = asynchronouos false = synchronous
  xhttp.send();
  //synchronous in order to make sure the request finishes
  let woeid = response[0]['woeid'];

  xhttp.open('GET', urlWeather+woeid+'/', false);
  xhttp.send();

  maxApi.post(response);

  let minTemp, maxTemp, windSpeed, visi, temp, state;
  minTemp = response.consolidated_weather[0].min_temp;
  maxApi.outlet('minTemp '+ minTemp);
  maxTemp = response.consolidated_weather[0].max_temp;
  maxApi.outlet('maxTemp '+ maxTemp);
  windSpeed = response.consolidated_weather[0].wind_speed;
  maxApi.outlet('windSpeed '+ windSpeed);
  visi = response.consolidated_weather[0].visibility;
  maxApi.outlet('visi '+ visi);
  temp = response.consolidated_weather[0].the_temp;
  maxApi.outlet('temp '+ temp);
  state = response.consolidated_weather[0].weather_state_abbr;
  maxApi.outlet('state '+ state);

});

xhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
    response = JSON.parse(this.responseText);
    // maxApi.post(response[0]);
    // //returns dictionary
    // // maxApi.outlet(response);
    // let firstEntry = response[0];
    // maxApi.outlet(firstEntry['latt_long']);
    // maxApi.post(firstEntry['woeid']);
  }
}
