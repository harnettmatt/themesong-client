# All
start:
	docker compose up

watch:
	docker compose up --build --force-recreate --watch

rebuild:
	docker compose up --build --force-recreate --detach

stop:
	docker compose down

delete:
	docker compose down --volumes

# Local
start-local:
	npm run dev

# Dev Tools
lint:
	pre-commit run --all-files
