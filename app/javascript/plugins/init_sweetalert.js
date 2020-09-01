import Swal from 'sweetalert'

const initSweetalert = (selector, options = {}) => {
  const swalButtons = document.querySelectorAll(selector);
  swalButtons.forEach((button) => {
    button.addEventListener('click', () => {
      Swal(options).then(callback);
    });
  });
};

export { initSweetalert };
