
PROJECT = uptycsssmcodepipeline
SRC_DIR = ./codepipeline
S3_DIR ?= ./s3bucket
FILENAME = ssm-distributor-sources
VERSION=0.0.1


all: build
.PHONY: clean build

clean:
	rm -rf build
	rm $(S3_DIR)/$(FILENAME).zip || true

build: clean
	cd $(SRC_DIR)
	cd $(SRC_DIR) && zip -r ../$(S3_DIR)/sources/$(FILENAME).zip . -x "*.DS_Store*" "*.git*"
	"build*" "Makefile"

