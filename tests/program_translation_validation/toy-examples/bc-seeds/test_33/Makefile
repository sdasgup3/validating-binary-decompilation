SRC=$(shell find . -maxdepth 1   -name "*.c" | sort -V)
WLLVM_BIN=test_33
WLLVM_OBJS=$(patsubst %.c, %.o, $(SRC))
WLLVM_EXTRACTED_BC=${WLLVM_BIN}.bc

$(info $$SRC is [${SRC}])
$(info $$BIN is [${WLLVM_BIN}])
$(info $$OBJ is [${WLLVM_OBJS}])
$(info $$BC is [${WLLVM_EXTRACTED_BC}])

all: bc
.PHONE: clean

bin:${WLLVM_BIN}
obj:${WLLVM_OBJS}
bc:${WLLVM_EXTRACTED_BC}

%.o:%.c
	wllvm -c $< -o $@

${WLLVM_BIN}:${WLLVM_OBJS}
	wllvm $^ -o $@

${WLLVM_EXTRACTED_BC}:${WLLVM_BIN}
	extract-bc ${WLLVM_BIN} -o ${WLLVM_EXTRACTED_BC}

clean:
	rm -rf ${WLLVM_BIN} ${WLLVM_OBJS} ${WLLVM_EXTRACTED_BC}
