
.PHONY: playwright

# GUIでテストを実行
vrt:
	docker compose exec playwright bash -c "npm run vrt-head"
hless:
	docker compose exec playwright bash -c "npm run vrt"
playwright:
	docker compose exec playwright bash
next:
	docker compose exec next bash
up:
	docker compose up -d
# 未定義のコンテナも含め落とす
down:
	docker compose down --remove-orphans 
restart:
	@make down
	@make up
	