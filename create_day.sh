#!/bin/bash

# 매개변수 확인
if [ $# -ne 2 ]; then
  echo "사용법: bash create_day.sh Day03 클래스조작"
  exit 1
fi

DAY_DIR="${1}_${2}"
TITLE="$1 - $2"

# 폴더 생성
mkdir -p "$DAY_DIR"

# index.html
cat <<EOF > "$DAY_DIR/index.html"
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>${TITLE}</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>${TITLE}</h1>
  <script src="script.js"></script>
</body>
</html>
EOF

# script.js
cat <<EOF > "$DAY_DIR/script.js"
// ${TITLE} 실습 JS
console.log('${TITLE} 시작');
EOF

# style.css
cat <<EOF > "$DAY_DIR/style.css"
/* ${TITLE} 기본 스타일 */
body {
  font-family: sans-serif;
  padding: 20px;
}
EOF

# README.md
cat <<EOF > "$DAY_DIR/README.md"
# ${TITLE}

## 📚 학습 목표
- 여기에 오늘 배울 개념과 키워드를 정리하세요

## ✅ 사용한 개념
- 키워드 나열

## 🔍 실험 결과
- 어떤 실험을 했고, 어떻게 동작했는지 기록

## 💡 깨달은 점
- 오늘 배운 것, 인상 깊었던 부분
EOF

echo "✅ ${DAY_DIR} 생성 완료!"
