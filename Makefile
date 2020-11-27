COMMIT_ID := $(shell git log|head -n1|awk '{print $$2}'|head -c 8)
build:
	docker build -t lab1-udemy-make:$(COMMIT_ID) .
