#!/bin/bash

gunicorn --bind 0.0.0.0:5000 --chdir aws-test/back_end handler:app
