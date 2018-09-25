# docker-jq-curl
Alpine-based image with [curl](https://curl.haxx.se) and [jq](https://stedolan.github.io/jq/)

## Usage

```console
$ docker -e NO_OF_RETRY=3 -e ASSERT_ON_JSON_VALUE='"Up"' run --rm bartektomala/jq-curl \
"curl --retry 10 --retry-delay 0 --retry-connrefused http://localhost:8558/cluster/members | jq '.members | .[1] | .status'"
```

## Tags

* `appropriate/curl:latest`: based on `alpine:latest`
* `appropriate/curl:3.8`: based on `alpine:edge`

## License

Copyright © 2015 Appropriate Computing

All contents licensed under the [MIT License](LICENSE)
