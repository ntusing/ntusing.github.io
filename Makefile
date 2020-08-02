JEKYLL_VERSION=3.8

new: 
	sudo docker run --rm \
		--env JEKYLL_VERSION="$(JEKYLL_VERSION)" \
		--volume="$(PWD):/srv/jekyll" \
		-it jekyll/builder:$(JEKYLL_VERSION) \
		jekyll new tmp

build:
	sudo docker run --rm \
		--env JEKYLL_VERSION="$(JEKYLL_VERSION)" \
		--volume="$(PWD):/srv/jekyll" \
		-it jekyll/builder:$(JEKYLL_VERSION) \
		-p 4000:4000 \
		jekyll build --incremental --watch

