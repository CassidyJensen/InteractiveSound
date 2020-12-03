//https://api.nasa.gov/planetary/apod?api_key=wBYGxQ96xBhzXAOn7ufZvV9SG2uEFmcJp49bZINH
//api_key=wBYGxQ96xBhzXAOn7ufZvV9SG2uEFmcJp49bZINH


//EXAMPLE URL:
//https://api.nasa.gov/neo/rest/v1/neo/3542519?api_key=DEMO_KEY

const maxApi = require("max-api");
const endUrl = '?api_key=wBYGxQ96xBhzXAOn7ufZvV9SG2uEFmcJp49bZINH'

let url = "https://api.nasa.gov/neo/rest/v1/neo/3542519?api_key=wBYGxQ96xBhzXAOn7ufZvV9SG2uEFmcJp49bZINH";
let adjustedUrl = "https://api.nasa.gov/neo/rest/v1/neo/"

let response;

// maxApi.outlet("hello node");

var XMLhttprequest = require('XMLhttprequest').XMLHttpRequest;
let xhttp = new XMLhttprequest();

maxApi.addHandler('makeRequest', (asteroid) => {
  // xhttp.open('GET', url, false);
  xhttp.open('GET', adjustedUrl+asteroid+endUrl, false);
  xhttp.send();

  maxApi.post(response);

  let name;
  let isHazard;
  let isHazardBool;
  let absMag;
  let diamMin, diamMax;
  let orbitalPeriod, eccentric, inclination;
  //maybe change name to designation?
  name = response.name;
  maxApi.outlet('name ' + name);
  isHazardBool = response.is_potentially_hazardous_asteroid;
  if(isHazardBool){
    maxApi.outlet('isHazard ' + 1);
  }
  else{
    maxApi.outlet('isHazard ' + 0);
  }
  //maxApi.outlet('isHazard ' + isHazard);
  absMag = response.absolute_magnitude_h;
  maxApi.outlet('absMag ' + absMag);
  diamMin = response.estimated_diameter.meters.estimated_diameter_min;
  maxApi.outlet('diamMin ' + diamMin);
  diamMax = response.estimated_diameter.meters.estimated_diameter_max;
  maxApi.outlet('diamMax ' + diamMax);
  orbitalPeriod = response.orbital_data.orbital_period;
  maxApi.outlet('orbitalPeriod ' + orbitalPeriod);
  eccentric = response.orbital_data.eccentricity;
  maxApi.outlet('eccentric ' + eccentric);
  inclination = response.orbital_data.inclination;
  maxApi.outlet('inclination ' + inclination);

})

xhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
    response = JSON.parse(this.responseText);
  }
}
