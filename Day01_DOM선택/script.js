// script.js
const title = document.querySelector('#main-title');
console.log(title);  // 콘솔로 확인

const button = document.querySelector('#btn');
button.addEventListener('click', () => {
  title.innerText = 'Changed!';
});
