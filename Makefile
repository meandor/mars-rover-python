unit-test:
	poetry run pytest tests/unit

integration-test:
	poetry run pytest tests/unit

lint:
	poetry run pylint mars_rover tests
