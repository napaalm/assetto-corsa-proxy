.PHONY: all build clean

all: build

build:
	python3 setup.py build_ext --inplace

clean:
	-rm -r build *.so *.c
