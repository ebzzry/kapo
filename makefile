.PHONY: all clean

all:
	@mkdir -p bin
	@sed -e '1s,#!/usr/bin/env bash,#!/bin/sh,' kapo > kapo.tmp
	@shc -f kapo.tmp -o bin/kapo
	@rm -f kapo.tmp kapo.tmp.x.c

install: all
	@mkdir -p ${HOME}/bin
	@cp bin/kapo ${HOME}/bin
	@rm -rf bin

clean:
	@rm -rf bin
	@rm -f kapo.tmp kapo.tmp.x.c
