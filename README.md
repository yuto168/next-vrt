# 概要
フロントエンド、バックエンドを同一レポジトリで管理するモノレポ構成を想定したVRTのデモ。
具体的に想定しているのは以下のような構成。
VRTのデモを目的としているため、backendディレクトリは今回省略

```
project-root
├── frontend
├── playwright
├── backend
├── docker
│   └── frontend
|   |  └── Dockerfile
│   └── backend
|   |  └── Dockerfile
├── compose.yml
```

# 環境
- docker 
- wsl
- next.js
- playwright
- githunb actions

# ワークフロー概要
- Github Actions で ラベルがついた PR の open,sync に対して VRT を実行
- フロント、playwright コンテナのみ起動して VRT 実施。
- 現ブランチと派生元ブランチのスクリーンショットをテスト実施時に撮影し、比較
- レポートを PR にコメント


# 参考

reg-suit:
https://github.com/reg-viz/reg-suit#getting-started

reg-cli:
https://github.com/reg-viz/reg-cli

playwright:
https://playwright.dev/docs/intro
