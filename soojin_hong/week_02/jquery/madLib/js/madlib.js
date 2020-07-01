$(document).ready( function () {
  // get t
  const makeMadLib = function () {

    const noun = $('#noun').val();
    const adjective = $('#adjective').val();
    const person = $('#person').val();

    const story = `${ person } really likes ${ adjective } ${ noun }.`;

    $('#story').text(story);
  }
  $('#lib-button').on('click', makeMadLib)
});
