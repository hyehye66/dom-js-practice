# Day 2: DOM 요소 선택 실습 기록

## 📌 학습 주제
- DOM 요소를 선택하는 다양한 방법 (ID, 클래스, 태그, CSS 선택자)
- HTMLCollection vs NodeList 차이
- forEach로 순회 가능한 객체 vs 불가능한 객체

## 💡 배운 점
- `getElementById`는 단일 요소를 반환하고, 가장 빠르다.
- `querySelector`는 CSS 선택자 방식으로 첫 번째 요소를 반환한다.
- `querySelectorAll`은 NodeList를 반환하며 forEach로 순회할 수 있다.
- `getElementsByClassName`, `getElementsByTagName`은 HTMLCollection을 반환해 `forEach` 사용 불가 (→ 배열로 변환 필요).

## 🧪 실습 결과
- 콘솔에 각 선택자별 결과가 정상 출력됨.
- querySelectorAll로 가져온 박스 요소들을 순회하며 텍스트 출력 성공.

## 🤔 느낀 점
- `querySelector`, `querySelectorAll`을 많이 쓰는 이유가 이해됨 (익숙한 CSS 선택자 문법 사용 가능)
- 다양한 선택 방법을 알면 디버깅에도 큰 도움이 될 것 같음.

## 요약
### ✅ 각 DOM 선택자의 목적과 쓰임새

#### 1. `document.getElementById('main-title')`

* **목적:** ID로 요소 하나를 빠르게 선택
* **이유:** HTML에서 ID는 유일해야 하므로 가장 빠르고 정확함
* **실제 용도 예:** 페이지 타이틀, 특정 버튼 등 단일 고유 요소

---

#### 2. `document.getElementsByClassName('box')`

* **목적:** 클래스명이 같은 여러 요소 선택
* **결과:** `HTMLCollection` (유사 배열, `forEach` 불가)
* **실제 용도 예:** 공통 스타일의 카드나 버튼 묶음 등

---

#### 3. `document.getElementsByTagName('li')`

* **목적:** 특정 태그명을 가진 모든 요소 선택
* **결과:** `HTMLCollection`
* **실제 용도 예:** 목록(`<ul><li>`) 전체 순회, `<table>`의 `<td>`들 선택 등

---

#### 4. `document.querySelector('.box')`

* **목적:** CSS 선택자 기반으로 **가장 첫 번째 일치 요소** 선택
* **결과:** 단일 요소 (`Element`)
* **실제 용도 예:** `.box` 클래스를 가진 첫 번째 div만 필요할 때

---

#### 5. `document.querySelectorAll('.box')`

* **목적:** CSS 선택자 기반으로 **모든 일치 요소** 선택
* **결과:** `NodeList` (배열처럼 `forEach` 가능)
* **실제 용도 예:** 모든 `.box` 요소에 이벤트 달기, 스타일 변경 등

---

### 🧠 핵심 차이 요약

| 선택자                      | 반환형              | 여러 개 선택   | forEach 사용 가능 | 사용 예                |
| ------------------------ | ---------------- | --------- | ------------- | ------------------- |
| `getElementById`         | `Element`        | ❌         | N/A           | 유일한 ID              |
| `getElementsByClassName` | `HTMLCollection` | ✅         | ❌ (배열 변환 필요)  | 같은 디자인 요소           |
| `getElementsByTagName`   | `HTMLCollection` | ✅         | ❌             | `<li>`, `<div>` 등   |
| `querySelector`          | `Element`        | ❌ (첫 번째만) | N/A           | CSS처럼 선택            |
| `querySelectorAll`       | `NodeList`       | ✅         | ✅             | `.box`, `ul > li` 등 |

---

### 🔍 오늘 실습 핵심 이유

* 상황에 따라 가장 효율적인 선택자를 고르는 판단력을 기르기 위함
* 이후 DOM 조작, 이벤트, API 렌더링에서도 이 선택이 매우 중요해짐
