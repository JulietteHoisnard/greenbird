import Swal from 'sweetalert'

const initSweetalert = (selector, options = {}) => {
  const swalButtons = document.querySelectorAll(selector);
  swalButtons.forEach((button) => {
    button.addEventListener('click', () => {
      Swal(options).then(callback);
    });
  });
};

const profileBadgePopup = () => {
  const userid = document.querySelector('.p-user')
  const id = userid.getAttribute('id')
  fetch(`/users/${id}`, { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
        if (data.challenges_done.length === 1) {
          console.log("hello")
        initSweetalertsomethingelse()
      }});
};

const profileBadgePopup = () => {
  const userid = document.querySelector('.p-user')
  const id = userid.getAttribute('id')
  fetch(`/users/${id}`, { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
        if (data.challenges_done.length === 3) {
          console.log("hello")
        initSweetalertsomethingelse()
      }});
};

const profileBadgePopup = () => {
  const userid = document.querySelector('.p-user')
  const id = userid.getAttribute('id')
  fetch(`/users/${id}`, { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
        if (data.challenges_done.length === 5) {
          console.log("hello")
        initSweetalertsomethingelse()
      }});
};

const profileBadgePopup = () => {
  const userid = document.querySelector('.p-user')
  const id = userid.getAttribute('id')
  fetch(`/users/${id}`, { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
        if (data.challenges_done.length === 4) {
          console.log("hello")
        initSweetalertsomethingelse()
      }});
};

const profileBadgePopup = () => {
  const userid = document.querySelector('.p-user')
  const id = userid.getAttribute('id')
  fetch(`/users/${id}`, { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
        if (data.challenges_done.length === 15) {
          console.log("hello")
        initSweetalertsomethingelse()
      }});
};

const initSweetalertsomethingelse = () =>  {
        Swal({
    title: "AMAZEBALLS",
    text: "You just achieved a new badge!",
    icon: "https://media.giphy.com/media/4Tkagznwgrv6A4asQb/giphy.gif",
    button: "Aww, yes",
    },)
    }
;

export { initSweetalert, profileBadgePopup };

// { document.body.addEventListener("load", function()
