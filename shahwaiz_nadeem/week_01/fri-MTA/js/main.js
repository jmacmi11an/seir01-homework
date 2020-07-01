const lines = {
  n: ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'],
  l: ['8th', '6th', 'Union Square', '3rd', '1st'],
  '6': ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']
}


const sameLine = function (sArray, sIndex, eArray, eIndex) {

  if (sIndex > eIndex) {
    console.log('Get on the train heading toward '+sArray[0]);
    while (sIndex > eIndex + 1){
      sIndex--;
      console.log('Continue riding through '+sArray[sIndex]);
    }
    sIndex--;
    console.log('Get out at the next stop ('+sArray[sIndex]+')');
  }
  if (sIndex < eIndex) {
    console.log('Get on the train heading toward '+sArray[sArray.length -1]);
    while (sIndex < eIndex - 1){
      sIndex++;
      console.log('Continue riding through '+sArray[sIndex]);
    }
    sIndex++;
    console.log('Get out at the next stop ('+sArray[sIndex]+')');
  }
}

const diffLine = function (sArray, sIndex, eArray, eIndex, name) {
  let sChangeOver = sArray.indexOf('Union Square');
  let eChangeOver = eArray.indexOf('Union Square');
  sameLine(sArray, sIndex, sArray, sChangeOver);
  console.log(`switch over to the ${name} line`);
  sameLine(eArray, eChangeOver, eArray, eIndex);
}

const planTrip = function (startLine, startStation, endLine, endStation) {
    let sArray = lines[startLine];
    let sIndex = sArray.indexOf(startStation);
    let eArray = lines[endLine];
    let eIndex = eArray.indexOf(endStation);

    if (startLine === endLine) {
      sameLine(sArray, sIndex, eArray, eIndex);
    } else {
      diffLine(sArray, sIndex, eArray, eIndex, endLine);
    }
}
