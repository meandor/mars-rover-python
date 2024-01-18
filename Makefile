help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  check-types            to check all types"
	@echo "  lint                   to check for lint"
	@echo "  test                   to run all tests"
	@echo "  test-unit              to run unit tests"
	@echo "  test-integration       to run integration tests"

unit-test:
	poetry run pytest tests/unit

integration-test:
	poetry run pytest tests/unit

lint:
	poetry run ruff check mars_rover tests

check-types:
	find ./mars_rover ./tests -type f -name "*.py" -exec poetry run mypy -v --disable-error-code misc --ignore-missing-imports --disallow-untyped-calls --disallow-untyped-defs --disallow-incomplete-defs {} +

test: unit-test integration-test lint check-types
