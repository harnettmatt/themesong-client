# All
start:
	docker compose up

rebuild:
	docker compose up --build --force-recreate

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
