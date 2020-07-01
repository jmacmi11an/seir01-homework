const network = {
  Alamain : ['Alamain', 'Ashburton', 'Burwood', 'Hartwell', 'Willison', 'Riverdale', 'Camberwell'],
  Craigieburn: ['Craigieburn', 'Roxburgh Park', 'Coolaroo', 'Broadmeadows', 'Jacana', 'Glenroy', 'Oak Park', 'Pascoe Vale', 'Strathmore', 'Glenbervie', 'Essendon', 'Moonee Ponds', 'Ascot Vale', 'Newmarket', 'Kensington', 'North Melbourne', 'Flagstaff'],
  Frankston: ['Frankston', 'Kananook', 'Seaford', 'Carrum', 'Bonbeach', 'Chelsea', 'Edithvale', 'Aspendale', 'Mordialloc', 'Parkdale', 'Mentone', 'Cheltenham', 'Southland', 'Highett', 'Moorabbin', 'Patterson', 'Bentleigh', 'McKinnon', 'Ormond', 'Glenhuntly', 'Caulfield', 'Malvern', 'Armandale', 'Toorak', 'Hawksburn', 'South Yarra', 'Richmond', 'Parliament'],
  glenWaverley: ['Glen Waverley', 'Syndal', 'Mount Waverley', 'Jordanville', 'Holmesglen', 'East Malvern', 'Darling', 'Glen Iris', 'Gardiner', 'Tooronga', 'Kooyong', 'Heyington', 'Burnley'],
  Hurstbridge: ['Hurstbridge', 'Wattle Glen', 'Diamond Creek', 'Eltham', 'Montmorency', 'Greensborough', 'Watsonia', 'Macleod', 'Rosanna', 'Heidelberg', 'Eaglemont', 'Ivanhoe', 'Darebin', 'Alphington', 'Fairfield', 'Dennis', 'Westgarth', 'Clifton Hill', 'Victoria Park', 'Collingwood', 'North Richmond', 'West Richmond', 'Jolimont', 'Parliament'],
  Lilydale: ['Lilydale', 'Mooroolbark', 'Croydon', 'Ringwood East', 'Ringwood', 'Heatherdale', 'Mitcham', 'Nunawading', 'Blackburn', 'Laburnum', 'Box Hill', 'Mont Albert', 'Surrey Hills','Chatham', 'Canterbury', 'East Camberwell', 'Camberwell', 'Auburn', 'Glenferrie', 'Hawthorn', 'Burnley', 'East Richmond', 'Richmond', 'Parliament'],
  Mernda: ['Mernda', 'Hawkstowe', 'Middle Gorge', 'South Morang', 'Epping', 'Lalor', 'Thomastown', 'Keon Park', 'Ruthven', 'Reservoir', 'Regent', 'Preston', 'Bell', 'Thornbury', 'Croxton', 'Northcote', 'Merri', 'Rushall', 'Clifton Hill'],
  Pakenham: ['Pakenham', 'Cardinia Road', 'Officer', 'Beaconsfield', 'Berwick', 'Narre Warren', 'Hallam', 'Dandenong', 'Yarraman', 'Noble Park', 'Sandown Park', 'Springvale', 'Westall', 'Clayton', 'Huntingdale', 'Oakleigh', 'Hughesdale', 'Murrumbeena', 'Carnegie', 'Caulfield', 'South Yarra', 'Richmond', 'Parliament'],
  Sandringham: ['Sandringham', 'Hampton','Brighton Beach', 'Middle Brighton', 'North Brighton', 'Gardenvale', 'Elsternwick', 'Ripponlea', 'Balaclava', 'Windsor', 'Prahran','South Yarra', 'Richmond', 'Flinders Street'],
  Sunbury: ['Sunbury', 'Diggers Rest', 'Watergardens', 'Keilor Plains', 'St Albans', 'Ginifer', 'Albion', 'Sunshine', 'Tottenham', 'West Footscray', 'Middle Footscray', 'Footscray', 'North Melbourne'],
  Upfield: ['Upfield', 'Gowrie', 'Fawkner', 'Merlynston','Batman', 'Coburg', 'Moreland', 'Anstey', 'Brunswick', 'Jewell', 'Royal Park', 'Flemington Bridge', 'Macaulay', 'North Melbourne'],
  Werribee: ['Werribee', 'Hoppers Crossing', 'Williams Landing', 'Aircraft', 'Laverton', 'Westona', 'Altona', 'Seaholme', 'Newport', 'Spotswood', 'Yarraville', 'Seddon', 'Footscray', 'South Kensington', 'North Melbourne', 'Southern Cross'],
  Williamstown: ['Williamstown', 'Williamstown Beach', 'North Williamstown', 'Newport'],
  cityLoop: ['Flinders Street', 'Parliament', 'Melbourne Central', 'Flagstaff', 'Southern Cross'],
}

let flow = [];

const trip = function (lineName,stationIn,stationOut) {
  for (i=0; i<Object.keys(network).length; i++) {
    if (lineName === Object.keys(network)[i]){
      flow = Object.values(network)[i];
      break;
    }
  }
  if ( flow.indexOf(stationIn) > flow.indexOf(stationOut) ) {
    flow = flow.reverse()
  }
  const getIn = flow.indexOf(stationIn);
  const getOut = flow.indexOf(stationOut);
  let commute = 1;
  let stations = `You must travel through the following stops on the ${ lineName } line:`;
  stations = stations + ' ' +flow[getIn + 1];
  for (let i = (getIn + 2); i < (getOut + 1); i++) {
    commute = commute + 1;
    stations = stations + ', ' + flow[i];
  }
  console.log (stations);
  return commute;
}

const planTrip = function (lineIn, stationIn, lineOut, stationOut) {
  let commute = 0;
  if (lineIn === lineOut){
    commute = trip (lineIn, stationIn, stationOut);
    console.log(`${ commute } stops in total.`)
  } else if (lineIn === 'Sunbury' || lineIn === 'Upfield') {
    commute = trip (lineIn, stationIn, 'North Melbourne' )
    commute = trip ('Craigieburn')
    console.log(`Change at North Melbourne and take the ${ lineOut } line.`)
    commute = commute + trip (lineOut, 'Union Square', stationOut);
    console.log(`${ commute } stops in total.`)
  }






   else {
    commute = trip (lineIn, stationIn, 'Union Square');
    console.log(`Change at Union Square and take the ${ lineOut } line.`)
    commute = commute + trip (lineOut, 'Union Square', stationOut);
    console.log(`${ commute } stops in total.`)
  }
}
