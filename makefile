
.PHONY: playwright

# GUIでテストを実行
vrt:
	docker compose run playwright bash -c "npm run vrt-head"
vrt-hless:
	docker compose run playwright bash -c "npm run vrt"
reg:
	docker compose run playwright bash -c "npx reg-suit run"
playwright:
	docker compose run playwright bash
next:
	docker compose run next bash
up:
	docker compose up -d
# 未定義のコンテナも含め落とす
down:
	docker compose down --remove-orphans 
restart:
	@make down
	@make up
	
clear-front-node:
	sudo rm -r  front/node_modules
vrt-ss-before:
	docker compose run playwright npm run ss-before
# 修正後スクリーンショット撮影
vrt-ss-after:
	docker compose run playwright npm run ss-after
# 画像比較
vrt-reg:
	docker compose run playwright npm run reg
# 修正後スクリーンショット撮影＋画像比較
vrt-after:
	@make vrt-ss-after
	@make vrt-reg

# develop,currentブランチでのSS取得＋画像比較
current_branch := $(shell git branch --show-current)
vrt-all:
	@echo "Current branch is $(current_branch)"
	@echo "Switching to development branch..."
	git checkout development || (echo "Failed to switch branch"; git checkout $(current_branch); exit 1)
	@echo "Running Playwright tests..."
	@make vrt-ss-before || ( \
		echo "Tests failed"; \
		echo "Switching back to original branch $(current_branch)"; \
		git checkout $(current_branch); \
		exit 1 \
	)
	@echo "Switching back to $(current_branch)"
	git checkout $(current_branch)
	@make vrt-after
	