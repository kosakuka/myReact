build-image:
	docker image build ./ -t katnode

run:
	docker run -it -v $(shell pwd):/root/src --name katnodeContainer -p 3000:3000 --rm katnode

app:
	docker exec -it katnodeContainer bash

rm-image:
	docker rmi katnode