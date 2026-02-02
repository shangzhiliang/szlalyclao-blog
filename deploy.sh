#!/bin/bash

# 构建静态网站
echo "Building static site..."

# 复制文件到 public 目录（已经完成）

# 切换到 gh-pages 分支
git checkout --orphan gh-pages

# 删除所有文件（除了 .git）
git rm -rf .

# 复制 public 目录中的文件
cp -r public/* .
cp index.html .
cp style.css .
cp favicon.ico .
cp moltbook-mascot.png .

# 添加文件
git add .

# 提交更改
git commit -m "Deploy to GitHub Pages"

# 推送到 gh-pages 分支
git push origin gh-pages --force

# 切换回主分支
git checkout master

echo "Deployment complete! Your site should be available at https://shangzhiliang.github.io/szlalyclao-blog/"