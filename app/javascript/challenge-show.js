

document.querySelector('.info-challenge').addEventListener('mouseover', displayBox);

function displayBox() {
  document.querySelector('.info-challenge').innerHTML = '<p>"You did it"</p>'
};
