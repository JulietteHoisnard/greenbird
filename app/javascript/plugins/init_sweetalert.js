import Swal from 'sweetalert'

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      Swal(options).then(callback);
    });
  }
};

export { initSweetalert };
