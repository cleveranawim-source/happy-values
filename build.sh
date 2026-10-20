#!/bin/sh
# src/app.html(아티팩트용 본문) → 배포용 단일 HTML
#   index.html               : GitHub Pages 학생용 주소
#   행복한삶_가치관정립.html : 패들렛에 파일로 올릴 때 (저장소에는 올리지 않음)
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="ko">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n</head>\n<body>\n'
  cat src/app.html
  printf '\n</body>\n</html>\n'
} > index.html
cp index.html "행복한삶_가치관정립.html"
