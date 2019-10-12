SRC=$(shell find . -maxdepth 1   -name "*.c" | sort -V)
WLVM_BIN=$(patsubst %.c, %, $(SRC))
WLLVM_EXTRACTED_BC=$(patsubst %.c, %.bc, $(SRC))

$(info $$BIN is [${WLVM_BIN}])
$(info $$BC is [${WLLVM_EXTRACTED_BC}])

all: BINS BCS
.PHONE: clean

BINS:${WLVM_BIN}
BCS:${WLLVM_EXTRACTED_BC}

%.bc:%
	extract-bc $< --output $@

%:%.c
	wllvm $< -o $@

clean:
	rm -rf ${WLVM_BIN} ${WLLVM_EXTRACTED_BC}
