install:
	@which gometalinter || go get -u github.com/alecthomas/gometalinter
	@gometalinter --install --update

deps:
	@which gometalinter || go get -v github.com/alecthomas/gometalinter
	@gometalinter --install --update

lint:
	@if [ "`gometalinter ./... --config=lint_config.json | tee /dev/stderr`" ]; then \
    		echo "^ - lint err" && echo && exit 1; \
    fi
