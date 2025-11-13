.PHONY: build-binary
build-binary:
	docker build -t gcp-credential-provider-image .
	docker run --rm -v "$(PWD):/app" gcp-credential-provider-image pyinstaller --onefile ./src/gcp-credential-provider
	