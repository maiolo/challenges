// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

const socket = io('https://zrp-challenge-socket.herokuapp.com');

  socket.on('occurrence', (data) => {
    console.log(data.location[0]);
    console.log(data.dangerLevel);
    console.log(data.monsterName);
    $.ajax({
      type: "POST",
      url: "/threats/",
      data: {threat: {name: data.monsterName, latitude: data.location[0].lat, longitude: data.location[0].lng, level: data.dangerLevel, active: "true"} },
    });
    console.log("dados inseridos")
  });

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});
