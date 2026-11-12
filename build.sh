#!/usr/bin/env bash
# 웹사이트를 만들고, 내 화면 전용 페이지 5개를 비밀번호로 잠가요.
# 사용법: 터미널에서 ./build.sh (윈도우는 Git Bash에서 bash build.sh)
set -e

quarto render
touch docs/.nojekyll

read -s -p "내 화면 비밀번호: " PW
echo

npx staticrypt docs/private/*.html \
  -p "$PW" \
  -d docs/private \
  --short \
  --remember 30 \
  --template-title "Heejin Roh" \
  --template-instructions "나만 볼 수 있는 페이지예요." \
  --template-button "열기" \
  --template-color-primary "#B5562E" \
  --template-color-secondary "#FBF7F3"

echo "완료: docs/private 안의 페이지 5개가 잠겼어요."
echo "올리기 전에 docs/private/myspace.html을 브라우저로 열어서 비밀번호 창이 먼저 뜨는지 확인하세요."
