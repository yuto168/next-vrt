
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
down:
	docker compose down --remove-orphans 
restart:
	@make down
	@make up
	
clear-front-node:
	sudo rm -r  front/node_modules
# 修正前スクリーンショット撮影
vrt-ss-before:
	docker compose run playwright npm run ss-before
# 修正後スクリーンショット撮影
vrt-ss-after:
	docker compose run playwright npm run ss-after
# 画像比較
vrt-reg:
	docker compose run playwright npm run reg

