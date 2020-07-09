tag = latest
export tag

build:
	docker build -t debtcollective/ghost-s3:$(tag) .

push:
	docker push debtcollective/ghost-s3:$(tag)