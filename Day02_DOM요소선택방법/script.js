// 1. ID로 선택
const title = document.getElementById('main-title');
console.log('ID 선택:', title);

// 2. 클래스명으로 선택 (HTMLCollection 반환)
const boxes = document.getElementsByClassName('box');
console.log('클래스 선택:', boxes);

// 3. 태그명으로 선택 (HTMLCollection 반환)
const listItems = document.getElementsByTagName('li');
console.log('태그 선택:', listItems);

// 4. querySelector 사용 (첫 번째 요소만 반환)
const firstBox = document.querySelector('.box');
console.log('querySelector:', firstBox);

// 5. querySelectorAll 사용 (NodeList 반환)
const allBoxes = document.querySelectorAll('.box');
console.log('querySelectorAll:', allBoxes);

// 6. NodeList 순회
allBoxes.forEach((box, i) => {
  console.log(`Box ${i + 1}:`, box.textContent);
});
