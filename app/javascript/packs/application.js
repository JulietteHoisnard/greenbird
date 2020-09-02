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
    initSweetalert('#sweet-alert-badge', {
    title: "GOLD",
    text: "You just got another badge!",
    icon: "https://res.cloudinary.com/giuliettainthecloud/image/upload/c_scale,h_200,w_200/v1599043169/greenbird/Screen_Shot_2018-10-14_at_12.02.24_PM_ae5nzl.png",
    // imageURL: 'https://image.shutterstock.com/z/stock-vector--exclamation-mark-exclamation-mark-hazard-warning-symbol-flat-design-style-vector-eps-444778462.jpg',
    // imageWidth: 200,
    // imageHeight: 200,
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
    // imageURL: 'https://image.shutterstock.com/z/stock-vector--exclamation-mark-exclamation-mark-hazard-warning-symbol-flat-design-style-vector-eps-444778462.jpg',
    // imageWidth: 200,
    // imageHeight: 200,
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
