# Makefile

install: install-deps
	npx simple-git-hooks

install-deps:
	npm ci

gendiff:
	node bin/gendiff.js

publish:
	npm publish --dry-run

lint:
	npx eslint .

fix:
	npx eslint . --fix

test:
	npx jest

test-coverage:
	npm test -- --coverage --coverageProvider=v8

.PHONY:	test


