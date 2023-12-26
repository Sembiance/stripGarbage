#!/bin/bash
rm -f stripGarbage*.tar stripGarbage*.tar.gz

STRIP_GARBAGE_VERSION=$(grep "define STRIP_GARBAGE_VERSION" stripGarbage.c | cut -d'"' -f2)
tar -cvf stripGarbage-$STRIP_GARBAGE_VERSION.tar Makefile stripGarbage.c
gzip stripGarbage-$STRIP_GARBAGE_VERSION.tar

echo "Available Now: stripGarbage-$STRIP_GARBAGE_VERSION.tar.gz"
