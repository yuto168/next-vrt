
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
restart:
	docker compose restart

	