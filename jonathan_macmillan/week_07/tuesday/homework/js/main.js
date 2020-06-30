const fetchHike = function () {
  event.preventDefault();

  // const lat = $('#latitude').val();
  // const lon = $('#longitude').val();
  // const maxDistance = $('#max_distance').val();
  // const number = $('#random').val();
  let number = Math.random() * 1000

  const apiKey = "200819247-91770ab5c5a70e779bcde2c26f6fbde3";

  const url = `https://www.hikingproject.com/data/get-trails-by-id?ids=7002${ number }&key=${ apiKey }`;

    $.ajax(url).done(function(result){
      let name = result.trails["0"].name;
      let image = result.trails["0"].imgMedium;
      let about = result.trails["0"].summary;
      let location = result.trails["0"].location;

      $('#name').html(name);
      $('#image').attr('src', image);
      $('#location').html(location);
      $('#about').html(about);
      console.log(result.trails["0"])

    })
 };

const $form = $('#hike_form');
$form.on('submit', fetchHike);
