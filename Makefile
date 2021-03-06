TARGET=DRAGON
GO=go
GO_MODULE=GO111MODULE=on
BIN_DIR=bin/
ALPINE_COMPILE_FLAGS=CGO_ENABLED=0 GOOS=linux GOARCH=amd64
PACKAGE_PREFIX=github.com/NTHU-LSALAB/DRAGON/cmd/

.PHONY: all clean $(TARGET)

all: $(TARGET)

DRAGON:
	$(GO_MODULE) $(ALPINE_COMPILE_FLAGS) $(GO) build -o $(BIN_DIR)$@ $(PACKAGE_PREFIX)$@

clean:
	rm -r bin 2>/dev/null; exit 0