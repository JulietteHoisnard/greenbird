const info = document.querySelector('.info-challenge');
const data = document.querySelector('.data-challenge');

begone(info);
begone(data);


document.querySelector('.infobox').addEventListener('click', (event) => {
  display(info);
  begone(document.querySelector('.infobox'));
  });

document.querySelector('.databox').addEventListener('click', (event) => {
  display(data);
  begone(document.querySelector('.databox'));
});

// function hide (element) {
//   element.style.visibility = 'hidden';
// };

function begone (element) {
  element.style.display = 'none';
};

function display (element) {
  element.style.display = '';
};
