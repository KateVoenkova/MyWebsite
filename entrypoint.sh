#!/bin/bash
gunicorn -w 4 -b 0.0.0.0:1190 app:app