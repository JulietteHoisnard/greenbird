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
        if (data.challenges_done.length === 4) {
          console.log("hello")
        initSweetalertsomethingelse()
      }});
};

const initSweetalertsomethingelse = () => {
      document.body.addEventListener("load", function() {
        Swal({
    title: "GOLD",
    text: "You're well on your way to rockstar status!",
    icon: "https://res.cloudinary.com/giuliettainthecloud/image/upload/c_scale,h_200,w_200/v1599043169/greenbird/Screen_Shot_2018-10-14_at_12.02.24_PM_ae5nzl.png",
    // imageURL: 'https://image.shutterstock.com/z/stock-vector--exclamation-mark-exclamation-mark-hazard-warning-symbol-flat-design-style-vector-eps-444778462.jpg',
    // imageWidth: 200,
    // imageHeight: 200,
    button: "Aww, yes",
    // timer: 3000
    },)
    })
};



export { initSweetalert, profileBadgePopup };



// const link = document.getElementById('my-link');
// if (conditional statement) {
//     link.click();
// } else {
//     console.log("condition was not met");
// }
