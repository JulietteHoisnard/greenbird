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
require("chartkick")
require("chart.js")

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initSweetalert, profileBadgePopup } from '../plugins/init_sweetalert';
import $ from "jquery"


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
    initSweetalert('#sweet-alert-badge5', {
    title: "TOO HOT TO HANDLE",
    text: "And then a hero comes along..(that's you)",
    icon: "https://media.giphy.com/media/TFBKfj2WsbTofA6vfa/giphy.gif",
    button: "Aww, yes",
    // timer: 3000
    },
     function () {
            location.reload(true);
            tr.hide();
    });

  initSweetalert('#sweet-alert-demo', {
    title: "GOLD",
    text: "You're well on your way to rockstar status!",
    icon: "https://media.giphy.com/media/rY93u9tQbybks/giphy.gif",
    button: "Aww, yes",
    },
     function () {
            location.reload(true);
            tr.hide();
    });

  initSweetalert('#sweet-alert-badge1', {
    title: "SOLID",
    text: "And then a hero comes along",
    icon: " https://media.giphy.com/media/Hls39rJqSugV2/giphy.gif",
    button: "Aww, yes",
    // timer: 3000
    },
     function () {
            location.reload(true);
            tr.hide();
    });

  initSweetalert('#sweet-alert-badge2', {
    title: "SPICY",
    text: "With the strength to carry on, don't let the carbon make us gone",
    icon: "https://media.giphy.com/media/bAIcOXdR6wqS4/giphy.gif",
    button: "Aww, yes",
    // timer: 3000
    },
     function () {
            location.reload(true);
            tr.hide();
    });

  initSweetalert('#sweet-alert-badge3', {
    title: "FIRE",
    text: "Cast your fears aside, cause your impact will survive",
    icon: "https://media.giphy.com/media/xUOxf794YXiWMIdGTK/giphy.gif",
    button: "Aww, yes",
    // timer: 3000
    },
     function () {
            location.reload(true);
            tr.hide();
    });

  initSweetalert('#sweet-alert-badge4', {
    title: "FLAMING",
    text: "Look inside you and be strong, the world needs you for long",
    icon: "https://media.giphy.com/media/Tow4FcTn2XRcs/giphy.gif",
    button: "Aww, yes",
    // timer: 3000
    },
     function () {
            location.reload(true);
            tr.hide();
    });

    profileBadgePopup()


});
// Chart
