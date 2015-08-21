#!/bin/sh
set -e
make CONFIG=tests
make CONFIG=twitool
make CONFIG=scheduler
make CONFIG=io
make CONFIG=driver
make CONFIG=simulator
