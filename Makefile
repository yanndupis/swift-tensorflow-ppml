default: build 

build:
	docker build -t swift-ppml .

shell: build
	docker run --privileged --user $(id -u):$(id -g) -p 127.0.0.1:8888:8888 -v $(PWD):/root/swift-ppml -it swift-ppml  /bin/bash

jupyter: build
	docker run --privileged --user $(id -u):$(id -g) -p 127.0.0.1:8888:8888 -v $(PWD):/root/swift-ppml swift-ppml  

strip:
	./tools/fastai-nbstripout -d nbs/*

convert-nbs-to-srcs:
	./tools/check-git-modified ./Sources
	jupyter nbconvert --execute tools/export_import.ipynb

sync-nbs-to-srcs: convert-nbs-to-srcs strip
