#!/usr/bin/env bash
# 내 맥에서 홈페이지를 만들어요.
# 보통은 홈페이지 안 "이 페이지 수정"으로 고치면 깃허브가 알아서 만들어 주니까, 이건 맥에서 직접 고칠 때만 써요.
set -e

quarto render
touch docs/.nojekyll

echo "완료: docs 폴더에 홈페이지가 만들어졌어요."
echo "비공개 탭 내용은 private-data에 암호화돼 있어서 여기서 따로 잠글 필요가 없어요."
